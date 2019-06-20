<?php
/*
  Connect to DB
  Get RefreshToken
  Pass RefreshToken to API
  Run API to get AccessToken and New RefreshToken
  Update Tokens Table with RefreshToken, AccessToken, and time for Next Refresh
 */

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://gatekeeper.vitrue.com/oauth/token",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"refresh_token\"\r\n\r\n4c263546881a090c4b44f9b08fd13e975fb75eb5fbeea67ef2d049aca98db5a1\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"grant_type\"\r\n\r\nrefresh_token\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"client_id\"\r\n\r\nd7352213c60829be595904d191ce4d291395501f371308062c69b59f3998ef37\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"client_secret\"\r\n\r\n50d8ae34562a392c09f467b2dbf8258504249f73618138f05c9d18943036b7da\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"redirect_uri\"\r\n\r\nhttp://localhost:8084/webcs/\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: gatekeeper.vitrue.com",
    "Postman-Token: 63d4d5bd-5a21-431c-b14c-3c10a03fca28,39fd8a8b-4055-4781-a2ea-7d198a7a6f1e",
    "User-Agent: PostmanRuntime/7.15.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: 841",
    "content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW",
    "cookie: _session_id=e6a51925ee802839c780eda9fc3430c6"
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