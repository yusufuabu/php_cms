<div class="header">  


	 <div class="container">
		  <div class="logo">
			  <a href="index.php"><img src="images/logo.jpg" title="" /></a>
		  </div>
			 <!---start-top-nav---->
			 <div class="top-menu">
				 <div class="search">
					 <form action="search.php" method="post">
					 <input name = "search" type="text" placeholder="" required="">
					 <input name ="submit" type="submit" value=""/>
					 </form>
				 </div>
				  <span class="menu"> </span> 
				   <ul>

                       <?php 
                       $query = "SELECT * FROM  categories";
                       $select_all_categories = mysqli_query($conn, $query);
                       while ($row = mysqli_fetch_array($select_all_categories)) {

                        $cat_title = $row['cat_title'];

                        echo "<li><a>{$cat_title}</a></li>";
                       } 
                       ?>
						<li><a href="admin">Admin</a></li>
						<li><a href="registration.php">Register</a></li>
						<?php
						if(isset($_SESSION['user_role'])){
							if(isset($_GET['id'])) {
								$p_id = $_GET['id'];
								echo "<li><a href='admin/post.php?source=edit&&post_id={$p_id}'>Edit Post</a></li>";
							}
						}
						?>						
						
						<!-- <li><a href="contact.html">CONTACT</a></li>						 -->
						<div class="clearfix"> </div>
				 </ul>
			 </div>
			 <div class="clearfix"></div>
					<script>
					$("span.menu").click(function(){
					$(".top-menu ul").slideToggle("slow" , function(){
					});
					});
					</script>
				<!---//End-top-nav---->					
	 </div>
</div>
<!--/header-->