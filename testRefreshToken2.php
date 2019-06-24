<?php

$client_Id  = 'd7352213c60829be595904d191ce4d291395501f371308062c69b59f3998ef37';
//$data = new TokenAccess();
//$arrayToken = $data->getAccessDetails($client_Id);

$cSecret    = '50d8ae34562a392c09f467b2dbf8258504249f73618138f05c9d18943036b7da';
$rToken     = '2a4660e150a34ec2ba6dde2e0716f37bf2b90db79ec2d1d33e0f3b470e5311c4';

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, 'https://gatekeeper.vitrue.com/oauth/token');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, "refresh_token=".$rToken."&redirect_uri=http://localhost:8084/webcs&client_id=".$client_Id."&client_secret=".$cSecret."&grant_type=refresh_token");
curl_setopt($ch, CURLOPT_POST, 1);

$headers = array();
$headers[] = 'Content-Type: application/x-www-form-urlencoded';
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

$result = curl_exec($ch);
$err = curl_error($ch);

if (curl_errno($ch)) {
    echo 'Error:' . curl_error($ch);
else{
  echo($result);
}
}
curl_close($ch);

?>