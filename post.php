<!-- DATABASE CONNECTION -->
<?php
include "includes/db.php";
?>
<?php
 include "includes/header.php";
?>
<!---header/ Navigation -->			

<?php 
	include "includes/navigation.php";
?>

<?php
if (isset($_GET['id'])){
	$post_id = $_GET['id'];

	$update_query = "UPDATE posts SET post_views_count = post_views_count + 1 WHERE post_id = '{$post_id}'";
	$execute_update_query = mysqli_query($conn, $update_query);

	$query = "SELECT * FROM posts WHERE post_id = '$post_id '";
	$select_post_query = mysqli_query($conn, $query);

	while ($row = mysqli_fetch_array($select_post_query)) {
	   $post_id = $row['post_id'];
	   $post_title = $row['post_title'];
	   $post_author = $row['post_author'];
	   $post_date = $row['post_date'];
	   $post_image = $row['post_image'];
	   $post_content = $row['post_content'];

?>
<div class="single">
	 <div class="container">
		  <div class="col-md-8 single-main">				 
			  <div class="single-grid">
					<img src="images/<?php echo $post_image; ?>" width="600" alt=""/>						 					 
					<p><?php echo $post_content; ?></p>
			  </div>
			 <ul class="comment-list">
		  		   <h5 class="post-author_head">Written by <a href="#" title="<?php echo $post_author; ?>" rel="author"><?php echo $post_author; ?></a></h5>
		  		   <li><img src="images/avatar.png" class="img-responsive" alt="">
		  		   <div class="desc">
		  		   <p>View all posts by: <a href="#" title="<?php echo $post_author; ?>" rel="author"><?php echo $post_author; ?></a></p>
		  		   </div>
		  		   <div class="clearfix"></div>
		  		   </li>
		  	  </ul>
			  <div class="content-form">
			  <?php 
				if(isset($_POST['create_comment'])) {
					$post_id = $_GET['id'];

					$comment_author = $_POST['author'];
					$comment_email = $_POST['email'];
					$comment_content = $_POST['content'];
					$comment_status = 'Unapproved';
					if(!empty($comment_author) && !empty($comment_email) && !empty($comment_content) ) {
					$query = "INSERT INTO comments (comment_post_id,comment_author,comment_email,comment_content,comment_status,comment_date) VALUES ('$post_id ','$comment_author', '$comment_email', '$comment_content','$comment_status', now() )";
					$add_comment = mysqli_query($conn, $query);
					if(!$add_comment){
						echo "query failed ". mysqli_error($conn);
					}

					$update_query = "UPDATE posts SET post_comment_count = post_comment_count + 1 WHERE post_id = '$post_id' ";
					$update_query_comment = mysqli_query($conn, $update_query);
					if(!$update_query_comment){
						echo "query failed ". mysqli_error($conn);
					}
				}else {
					echo "<script> alert('comments fields cannot be empty') </script>";
				}
				}
			  ?>
					 <h3>Leave a comment</h3>
					<form action="" method="post">
						<input type="text" name="author" placeholder="Name" required/>
						<input type="text" name="email" placeholder="Email" required/>
						<!-- <input type="text" placeholder="Phone" required/> -->
						<textarea name="content" placeholder="Message" required></textarea>
						<input type="submit" name="create_comment" value="SEND"/>
						
				   </form>
						 </div>
							<div class="clearfix"></div>

							<?php 
							$query = "SELECT * FROM comments WHERE comment_post_id = '$post_id' AND comment_status='Approved' ORDER BY comment_id DESC";
							$get_comments = mysqli_query($conn,$query);
							if(!$get_comments){
								die('Query Failed'. mysqli_error($conn));
							}
							while ($row = mysqli_fetch_array($get_comments)){
								$comment_date = $row['comment_date'];
								$comment_content = $row['comment_content'];
								$comment_author = $row['comment_author'];
							
							
							?>
						 <div class="comments" style="margin:20px 10px;">
						 <h4 class="h4"><?php echo $comment_author; ?> <small><?php echo $comment_date; ?></small></h4>
						 <p><?php echo $comment_content; ?></p>
						 </div>
							<?php } ?>
		  </div>
<?php }} else {
	header("location: index.php");
 }
?>
			  <!--SIDEBAR CONTENT -->
			  <?php
				include "includes/sidebar.php";
			 ?>
<!-- FOOTER-->
<?php 
include "includes/footer.php";
?>

	
