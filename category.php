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
                    if(isset($_GET['cat_id'])){
                        $category_id = $_GET['cat_id'];
                    }
				 $query = "SELECT * FROM posts WHERE post_category_id = '$category_id'";
				 $select_post_query = mysqli_query($conn, $query);

				 while ($row = mysqli_fetch_array($select_post_query)) {
					$post_id = $row['post_id'];
					$post_title = $row['post_title'];
					$post_author = $row['post_author'];
					$post_date = $row['post_date'];
					$post_image = $row['post_image'];
					$post_content = substr($row['post_content'],0,100) ;
				 

				 ?>
					 <div class="content-grid-info">
						 <img src="images/<?php echo $post_image; ?>" width="600" alt=""/>
						 <div class="post-info">
						 <h4><a href="post.php?id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a>  <?php echo $post_date; ?> /by <?php echo $post_author; ?>/ 27 Comments</h4>
						 <p><?php echo $post_content; ?></p>
						 <a href="post.php?id=<?php echo $post_id; ?>"><span></span>READ MORE</a>
						 </div>
					 </div>
					 <?php
				 }
					 ?>
					 
				 </div>
			  </div>
			  <!--SIDEBAR CONTENT -->
			 <?php
				include "includes/sidebar.php";
			 ?>
<!-- FOOTER-->
<?php 
include "includes/footer.php";
?>
	
