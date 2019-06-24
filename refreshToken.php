<?php
/*
  Connect to DB
  Get RefreshToken
  Pass RefreshToken to API
  Run API to get AccessToken and New RefreshToken
  Update Tokens Table with RefreshToken, AccessToken, and time for Next Refresh
 */

include 'database.php';
$client_Id = CLIENT_ID;
$data = new TokenAccess();
$arrayToken = $data->getAccessDetails($client_Id);

$cSecret = $arrayToken[0];
$rToken = $arrayToken[1];
$aToken  = $arrayToken[2];


function RefreshToken($clientId, $clientSecret, $refreshToken) {

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://gatekeeper.vitrue.com/oauth/token');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, "refresh_token=".$refreshToken."&redirect_uri=http://localhost:8084/webcs&client_id=".$clientId."&client_secret=".$clientSecret."&grant_type=refresh_token");
        curl_setopt($ch, CURLOPT_POST, 1);

        $headers = array();
        $headers[] = 'Content-Type: application/x-www-form-urlencoded';
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        $result = curl_exec($ch);
        $err = curl_error($ch);

        if (curl_errno($ch)) {
            echo 'Error:' . curl_error($ch);
        }
        else{
            //echo($result);
            $data = json_decode($result, true);
            return $data->UpdateAccessToken($clientId, $data[0],$data[3]);
        }
        curl_close($ch);  
    }


//echo RefreshToken($client_Id, $cSecret, $rToken);
    echo ($rToken);

?>