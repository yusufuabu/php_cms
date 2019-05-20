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

<div class="content">
	 <div class="container">
		 <div class="content-grids">
			 <div class="col-md-8 content-main">
				 <div class="content-grid">	
					<?php
					$count_query = "SELECT * FROM posts WHERE post_status = 'published'";
					$find_count = mysqli_query($conn, $count_query);
					$count = mysqli_num_rows($find_count);
					$per_page = 5;
					$count = ceil($count/$per_page);

					if (isset($_GET['page'])) {
						
						$page = $_GET['page'];
					} else {
						$page ="";
					}

					if($page == "" || $page == 1){
						$page_1 = 0;
					} else {
						$page_1 = ($page * $per_page) - $per_page;
					}

				 $query = "SELECT * FROM posts WHERE post_status = 'published' LIMIT $page_1, $per_page";
				 $select_post_query = mysqli_query($conn, $query);
				 $num_rows = mysqli_num_rows($select_post_query);

				 if($num_rows == 0){
					 echo "<h1 class=text-center> NO POST HERE</h1>";
				 } else {

				 while ($row = mysqli_fetch_array($select_post_query)) {
					$post_id = $row['post_id'];
					$post_title = $row['post_title'];
					$post_author = $row['post_author'];
					$post_date = $row['post_date'];
					$post_image = $row['post_image'];
					$post_content = substr($row['post_content'],0,100) ;
				 

				 ?>
					 <div class="content-grid-info">
						 <a href="post.php?id=<?php echo $post_id; ?>"><img src="images/<?php echo $post_image; ?>" width="600" alt=""/></a>
						 <div class="post-info">
						 <h4><a href="post.php?id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a>  <?php echo $post_date; ?> /by <a href="author.php?author=<?php echo $post_author; ?>"><?php echo $post_author; ?></a>/ 27 Comments</h4>
						 <p><?php echo $post_content; ?></p>
						 <a href="post.php?id=<?php echo $post_id; ?>"><span></span>READ MORE</a>
						 </div>
					 </div>
					 <?php
				 } }
					 ?>
					 
				 </div>
			  </div>
			  <!--SIDEBAR CONTENT -->
			 <?php
				include "includes/sidebar.php";
			 ?>

			 <ul class="pager">
				<?php 
				for ($i = 1; $i <= $count; $i++){
					if ($i == $page) {
						echo "<li><a class='active_link' href='index.php?page={$i}'>{$i}</a></li>";
					} else {
						echo "<li><a href='index.php?page={$i}'>{$i}</a></li>";
					}
					
				}
				?>
			 </ul>
<!-- FOOTER-->
<?php 
include "includes/footer.php";
?>
	
