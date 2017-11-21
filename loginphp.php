<?php include "db.php"; ?>
<?php
$email=$_POST['email'];
$password=$_POST['password'];
$sql="SELECT * FROM user WHERE email='$email' AND password='$password'";
$run= mysqli_query($con,$sql);
if(($row=mysqli_fetch_assoc($run)))
{
$u_id=$row['u_id'];	
?><script>window.location='project.php?u_id=<?php echo $u_id; ?>'</script>
	<?php

} else if($email=="admin@gmail.com" && $password=="admin@123")
{
	?>
		
		<script>window.location='admin/items.php';</script>
		<?php
	
}
    else {?>
		<script>alert('please check you password');</script>
		<script>window.location='login.html';</script>
		<?php
	}
	  
 ?>