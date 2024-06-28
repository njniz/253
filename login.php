<?php
   
   include("dbconn.php");

    $username=@$_POST['username']; //the @ is optional, to suppress error messages
    $userPassword=@$_POST['userPassword'];
    $sql="SELECT * FROM user WHERE username= '$username' AND userPassword= '$userPassword'";
    $res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
    if (mysqli_num_rows($res)==1) echo "OK";
    mysqli_close($dbconn);

?>