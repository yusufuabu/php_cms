<?php 
if(isset($_POST['create_post'])) {
    $post_title = escape($_POST['post_title']);
    $post_author = escape($_POST['post_author']);
    $post_category_id = escape($_POST['post_category_id']);
    $post_status = escape($_POST['post_status']);
    $post_tags = escape($_POST['post_tags']);
    $post_content = escape($_POST['post_content']);
    $post_date = date('d-m-y');
    $post_time = time();
    $post_comment_count = 0;

    $post_image = $_FILES['post_image']['name'];
    $post_image = time().$post_image;
    $post_image_temp = $_FILES['post_image']['tmp_name'];

    move_uploaded_file($post_image_temp, "../images/$post_image");

    $query = "INSERT INTO posts(post_category_id,post_title,post_author,post_date, post_image,post_content,post_tags,post_comment_count,post_status) VALUES ('$post_category_id','$post_title','$post_author',now(),'$post_image','$post_content','$post_tags','$post_comment_count','$post_status')";
    $add_post = mysqli_query($conn, $query);
    if($add_post){
        echo "<p class='alert alert-success alert-dismiss'>Record added </p>";
    } else {
        die("query failed". mysqli_error($conn));
    }
}
?>

<h2>Add Posts</h2>
<form action="" method="post" enctype="multipart/form-data">
<div class="form-group">
<label for="Post title">Post Title</label>
<input type="text" name="post_title" id="" class="form-control">
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
     echo "i am your lord";
     
          
         echo "<option value='$cat_id'>$cat_title</option>";

                
          }

?>
</select>
</div>

<div class="form-group">
<label for="Post_author">Post Author</label>
<input type="text" name="post_author" id="" class="form-control">
</div>

<div class="form-group">
<label for="Post_status">Post Status</label>
<select name="post_status" id="" class="form-control">
    <option value="draft">Draft</option>
    <option value="published">Publish</option>
</select>

</div>


<div class="form-group">
<label for="Post_Image">Post Image</label>
<input type="file" name="post_image" id="" class="form-control">
</div>

<div class="form-group">
<label for="Post_tags">Post Tags</label>
<input type="text" name="post_tags" id="" class="form-control">
</div>

<div class="form-group">
<label for="Post_content">Post Content</label>
<textarea name="post_content" id="" class="form-control" cols="30" rows="10"></textarea>
</div>

<div class="form-group">

<input type="submit" name="create_post" value="Add Post" id="" class="btn btn-primary btn-block">
</div>
</form>