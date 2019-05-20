<?php 
if(isset($_POST['create_user'])) {
    $username = escape($_POST['username']);
    $password = escape($_POST['password']);
    $firstname = escape($_POST['firstname']);
    $lastname = escape($_POST['lastname']);
    $email = escape($_POST['email']);
    $role = escape($_POST['role']);
    $post_date = date('d-m-y');
    $post_time = time();
    $post_comment_count = 0;

    $post_image = $_FILES['image']['name'];
    $post_image = time().$post_image;
    $post_image_temp = $_FILES['image']['tmp_name'];

    move_uploaded_file($post_image_temp, "../images/$post_image");

    $query = "SELECT randsalt FROM users";
    $select_query = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($select_query);

    $salt = $row['randsalt'];
     $password = crypt($password, $salt);

    $query = "INSERT INTO users(username,firstname,lastname,user_password,user_image,email,user_role) VALUES ('$username','$firstname','$lastname','$password','$post_image','$email','$role')";
    $add_user = mysqli_query($conn, $query);
    if($add_user){
        echo "<p class='alert alert-success alert-dismiss'>Record added </p>";
    } else {
        die("query failed". mysqli_error($conn));
    }
}
?>

<h2>Add User</h2>
<form action="" method="post" enctype="multipart/form-data">


<div class="form-group">
<label for="">Username</label>
<input type="text" name="username" id="" class="form-control">
</div>

<div class="form-group">
<label for="">Password</label>
<input type="password" name="password" id="" class="form-control">
</div>
<div class="form-group">
<label for="firtname">First Name</label>
<input type="text" name="firstname" id="" class="form-control">
</div>

<div class="form-group">
<label for="lastname">last Name</label>
<input type="text" name="lastname" id="" class="form-control">
</div>

<div class="form-group">
<label for="email">Email</label>
<input type="email" name="email" id="" class="form-control">
</div>

<div class="form-group">
<label for="Post_Image">Image</label>
<input type="file" name="image" id="" class="form-control">
</div>

<div class="form-group">
<label for="role">User Role</label>
<select name="role" id="" class="form-control">
    <option value="admin">Admin</option>
    <option value="subscriber">Subscriber</option>
</select>
</div>



<div class="form-group">

<input type="submit" name="create_user" value="Add User" id="" class="btn btn-primary btn-block">
</div>
</form>