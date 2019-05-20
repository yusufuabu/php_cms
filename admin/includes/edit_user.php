<?php 
if(isset($_POST['edit_user'])) {
    $id = $_GET['edit'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $role = $_POST['role'];
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

    $query = "UPDATE users SET username = '$username',firstname = '$firstname',lastname ='$lastname',user_password = '$password',user_image = '$post_image' ,email = '$email',user_role = '$role' WHERE id = '$id'";
    
    $edit_user = mysqli_query($conn, $query);
    if($edit_user){
        echo "<p class='alert alert-success alert-dismiss'>User Updated</p>";
    } else {
        die("query failed". mysqli_error($conn));
    }
}
?>

<h2>Edit User</h2>
<?php 
if (isset($_GET['edit'])){
 $id = $_GET['edit'];

$query = "SELECT * FROM users WHERE id = '$id'";
$select_users = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_array($select_users)) {
       $id = $row['id'];
       $username = $row['username'];
       $firstname = $row['firstname'];
       $lastname = $row['lastname'];
       $password = $row['user_password'];
       $email = $row['email'];
       $image = $row['user_image'];
       $role = $row['user_role'];
    //    $post_comment = $row['post_comment_count'];
    //    $post_date = $row['post_date'];

    ?>
    
<form action="" method="post" enctype="multipart/form-data">


<div class="form-group">
<label for="">Username</label>
<input type="text" value="<?php echo $username; ?>" name="username" id="" class="form-control" readonly>
</div>

<div class="form-group">
<label for="">Password</label>
<input type="password" value="<?php echo $password; ?>"  name="password" id="" class="form-control">
</div>
<div class="form-group">
<label for="firtname">First Name</label>
<input type="text"  value="<?php echo $firstname; ?>" name="firstname" id="" class="form-control">
</div>

<div class="form-group">
<label for="lastname">last Name</label>
<input type="text" value="<?php echo $lastname; ?>" name="lastname" id="" class="form-control">
</div>

<div class="form-group">
<label for="email">Email</label>
<input type="email" value="<?php echo $email; ?>" name="email" id="" class="form-control">
</div>

<div class="form-group">
<label for="Post_Image">Image</label>
<br>
<img src="../images/<?php echo $image; ?>" width="100" alt="">
<br>
<input type="file" name="image" value="<?php echo $email; ?>" id="" class="form-control">
</div>

<div class="form-group">
<label for="role">User Role</label>
<select name="role" id="" class="form-control">

    <option value="<?php echo $role; ?>"><?php echo $role; ?></option>
    <?php 
        if ($role == 'admin'){
          echo   "<option value='subscriber'>Subscriber</option>";
        } else {
           echo  "<option value='admin'>Admin</option>";
        }
    ?>
    
</select>
</div>



<div class="form-group">

<input type="submit" name="edit_user" value="Edit User" id="" class="btn btn-warning btn-block">
</div>
</form>

    <?php }} ?>