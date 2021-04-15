<?php

$link = mysqli_connect("localhost", "root", "root", "demo");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

if(isset($_POST['submit'])){
  $name = mysqli_real_escape_string($link, $_REQUEST['username']);
  $pass = mysqli_real_escape_string($link, $_REQUEST['password']);
  $email = mysqli_real_escape_string($link, $_REQUEST['email']);
  $address = mysqli_real_escape_string($link, $_REQUEST['address']);
  $gender = ($_REQUEST['gender']);
  

  $chk = "";

  foreach($gender as $chk1){
    $chk .= $chk1.",";
  }
}

// Attempt insert query execution
$sql = "INSERT INTO `users`(`username`, `pass`, `email`, `address`, `gender`) VALUES ('$name', '$pass', '$email', '$address', '$chk')";
if(mysqli_query($link, $sql)){
  ?>
  <script>
      alert("Your info store successfully. We will contract you soon!");
  </script>
<?php
}else{
  ?>
  <script>
      alert("Failed to send data.Try Again!");
  </script>
  <?php
}

// Close connection
mysqli_close($link);


?>