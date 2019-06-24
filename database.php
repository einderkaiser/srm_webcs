<?php
//CLIENT_ID is generated in the SRM after registring the application
define ("CLIENT_ID", "d7352213c60829be595904d191ce4d291395501f371308062c69b59f3998ef37");

Class DbConnection{


	function getdbconnect(){
		$conn = mysqli_connect("localhost","root","Fhte1#g3T6","osrm") or die("Couldn't connect");

		return $conn;
	}

		function CloseCon($conn){
		$conn -> close();
	}

}

//require_once('database.php');

Class TokenAccess{
	function getAccessDetails($id) {
		$Dbobj = new DbConnection();
		$query = mysqli_query($Dbobj->getdbconnect(), "SELECT client_secret, refresh_token, access_token FROM SRM_CONFIG  where client_id = '$id'");

		return mysqli_fetch_array($query, MYSQLI_NUM);
		//return mysqli_fetch_row($query);
		
	}

	function UpdateAccessToken($id, $accessToken, $refreshToken){
		$Dbobj = new DbConnection();
		$query = "UPDATE SRM_CONFIG SET refresh_token = ".$refreshToken.", access_token = ".$accessToken." WHERE client_id = '$id'";

		if (mysqli_query($Dbobj->getdbconnect(), $query) === TRUE) {
			    return "Record updated successfully";
		} else {
			    return "Error updating record: " . $Dbobj->getdbconnect()->error;
		}
	}
}

?>