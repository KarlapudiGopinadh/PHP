<?php
include 'db.php'; 
?>
<!DOCTYPE HTML>  
<html>
<head>
</head>
<body>  



<h2>signup</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name: <input type="text" name="name">
  <br><br>
  E-mail: <input type="text" name="email">
  <br><br>
  PhoneNo: <input type="text" name="phoneno">
  <br><br>
  Password:
  <input type="password" name="password">
  <br><br>
  
  <input type="submit" name="submit" value="Submit">  
</form>

</body>
</html>

<?php

if (isset($_POST["submit"] ) )
{
  $name = $_POST["name"];
  $email = $_POST["email"];
  $phoneno = $_POST["phoneno"];
  $password = $_POST["password"];
  
  $sql="INSERT INTO user(name,email,phone_no,password) VALUES('$name ','$email','$phoneno','$password')";
  $run=mysqli_query($con,$sql);
  if($run){
	  header('location:project.php');
	  
  }
  /*else
  {
	  echo "<script>alert("data is not entered");</script>";
	   header('location:signup.php');
	  
  }*/
  
  }


?>