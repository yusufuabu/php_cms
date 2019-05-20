<?php 
include "db.php";
session_start();


if(isset($_POST['login'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Cleaning Input for SQL injection
    $username = mysqli_real_escape_string($conn, $username);
    
    $password = mysqli_real_escape_string($conn, $password); 

    //Query database
    $query = "SELECT * FROM users WHERE username = '$username'";
    $select_user = mysqli_query($conn, $query);

    if(!$select_user){
        die("QUERY FAILED". mysqli_error($conn));
    }
    // Fetching User Details from database
    $row = mysqli_fetch_array($select_user);

    $db_id = $row['id'];
        $db_username = $row['username'];
        $db_user_password = $row['user_password'];
        $db_firstname = $row['firstname'];
        $db_lastname = $row['lastname'];
        $db_user_role = $row['user_role'];
        $salt = $row['randsalt'];
    

    $password = crypt($password,  $db_user_password);
if($username === $db_username && $password === $db_user_password){
   $_SESSION{'username'} = $db_username;
    $_SESSION{'firstname'} = $db_firstname;
    $_SESSION{'lastname'} = $db_lastname;
   $_SESSION{'user_role'} = $db_user_role;
    header("Location: ../admin");
    
    
}  else {
    header("Location: ../index.php");
   
}

}


?>