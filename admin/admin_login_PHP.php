<?php
session_start();
require('config/Connection.php');
if (isset($_POST['btn_login'])) {
	$email=mysqli_real_escape_string($conn, $_POST['email']);
	$password=mysqli_real_escape_string($conn, $_POST['password']);
	if (empty($email) || empty($password)) {
		header("location: admin_login.php?error=empty");
		exit();
	}
	else
	{
		$query="SELECT * FROM admins WHERE admin_email='$email'";
		$runQuery=mysqli_query($conn, $query) or die(mysqli_error($conn));
		$count=mysqli_num_rows($runQuery);
		if ($count<1) {
			header("location: login_registration.php?error=incorrectusername");
			exit();
		}
		else
		{
			$row = mysqli_fetch_assoc($runQuery);
			//De-hashing the password
			$hashedPasswordCheck = password_verify($password, $row['password']);
			if ($hashedPasswordCheck == false) {
				header("location: login_registration.php?error=incorrectpassword");
				exit();
			}
			elseif ($hashedPasswordCheck == true) {
				$_SESSION['adminid'] = $row['id'];
				/*if (isset($_REQUEST['remember']) && $_REQUEST['remember']==='1') {
				$time = time()+(30*24*60*60);
				setcookie("ownerid",$row['user_id'], $time);
				}
				else
				{
					setcookie("ownerid",$row['user_id']);
				}*/
				header("location:index.php");
			}
		}

	}
}
?>