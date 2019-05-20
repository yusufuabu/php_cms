<?php 
if(isset($_POST['edit_post'])) {

    $the_post_id = $_POST['post_id'];
    $post_title = $_POST['post_title'];
    $post_author = $_POST['post_author'];
    $post_category_id = $_POST['post_category_id'];
    $post_status = $_POST['post_status'];
    $post_tags = $_POST['post_tags'];
    $post_content = $_POST['post_content'];
    $post_date = date('d-m-y');
    $post_time = time();
    $post_comment_count = 2;

    $post_image = $_FILES['post_image']['name'];
    
    

    

    if(empty($post_image)){
        $query = "SELECT * FROM posts WHERE post_id = '$the_post_id'";
        $get_image = mysqli_query($conn, $query);
  

    while ($row = mysqli_fetch_array($get_image)) {
        $post_image = $row['post_image'];

    }

    } else {
        $post_image = time().$post_image;
        $post_image_temp = $_FILES['post_image']['tmp_name'];
        move_uploaded_file($post_image_temp, "../images/$post_image");
    }

    $query = "UPDATE  posts SET post_category_id = '$post_category_id',post_title = '$post_title',post_author = '$post_author',post_date = now(), post_image = '$post_image',post_content = '$post_content',post_tags ='$post_tags',post_comment_count = '$post_comment_count',post_status = '$post_status' WHERE post_id = '$the_post_id'";
    $update_post = mysqli_query($conn, $query);
    if($update_post){
        echo "<p class='alert alert-success alert-dismiss'>Record Updated </p>";
    } else {
        die("query failed". mysqli_error($conn));
    }
}
?>

<h2>Update Posts</h2>

<?php 
if (isset($_GET['post_id'])) {
    $post_id = $_GET['post_id'];
}

 $query = "SELECT * FROM  posts WHERE post_id = '{$post_id}'";
 $select_all_categories_sidebar = mysqli_query($conn, $query);
 while ($row = mysqli_fetch_array($select_all_categories_sidebar)) {
    $post_id = $row['post_id'];
    $post_author = $row['post_author'];
    $post_title = $row['post_title'];
    $post_category = $row['post_category_id'];
    $post_status = $row['post_status'];
    $post_image = $row['post_image'];
    $post_tags = $row['post_tags'];
    $post_comment = $row['post_comment_count'];
    $post_date = $row['post_date'];
    $post_content = $row['post_content'];
 


 
 ?>

<form action="" method="post" enctype="multipart/form-data">
<div class="form-group">
<label for="Post title">Post Title</label>
<input value="<?php echo $post_title; ?>" type="text" name="post_title" id="" class="form-control">
</div>

<div class="form-group">
<label for="categores">Category</label>


<select name="post_category_id" id="" class="form-control">
    <?php 
         $query = "SELECT * FROM  categories";
         $select_all_categories_sidebar = mysqli_query($conn, $query);
         while ($row = mysqli_fetch_array($select_all_categories_sidebar)) {
            $cat_id = $row['cat_id'];
          $cat_title = $row['cat_title'];
     
          
         echo "<option value='$cat_id'>$cat_title</option>";

                
          }

?>
</select>
</div>

<div class="form-group">
<label for="Post_author">Post Author</label>
<input type="text" value="<?php echo $post_author; ?>"  name="post_author" id="" class="form-control">
</div>

<!-- <div class="form-group">
<label for="Post_status">Post Status</label>
<input type="text" name="post_status" value="<?php echo $post_status; ?>"  id="" class="form-control">
</div> -->
<div class="form-group">
    <label for="Post  Status ">Post Status</label>
    <select name="post_status" id="" class="form-control">
    <option value="<?php echo $post_status; ?>"><?php echo  $post_status; ?></option>
    <?php
        if ($post_status == 'published') {
            echo "<option value='draft'>Draft</option>";
        } else {
            echo "<option value='published'>Published</option>";
        }
    ?>
</select>
</div>


<div class="form-group">
<label for="Post_Image">Post Image</label>
<br>
<img src="../images/<?php echo $post_image; ?>" width="100" alt="">
<br>
<input type="file" name="post_image" id=""  class="form-control">
</div>

<div class="form-group">
<label for="Post_tags">Post Tags</label>
<input type="text" name="post_tags" id="" value="<?php echo $post_tags; ?>"  class="form-control">
</div>

<div class="form-group">
<label for="Post_content">Post Content</label>
<textarea name="post_content" id=""  class="form-control" cols="30" rows="10"><?php echo $post_content; ?></textarea>
</div>

<div class="form-group">
<input type="hidden" name="post_id" value="<?php echo $post_id; ?>">
<input type="submit" name="edit_post" value="Update Post" id="" class="btn btn-warning btn-block">
</div>
</form>

<?php 

 }
?>