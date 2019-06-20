<?php
/*
  Connect To DB
  Get Access Token from DB
  Run Api to Fetch Messages into JSON Array
  Insert Data into Messages Table
*/


$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://public-api.vitrue.com/engage/v1/messages?bundleId=40302",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer $accessToken",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: public-api.vitrue.com",
    "Postman-Token: 0bae656a-83b7-426c-9dd6-379aa384473e,45a53f7d-908d-4f00-a57c-3371969e2b0f",
    "User-Agent: PostmanRuntime/7.15.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}