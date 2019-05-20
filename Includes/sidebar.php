<div class="col-md-4 content-right">
				 <div class="recent">
					 <h3>RECENT POSTS</h3>
					 <ul>
					 <li><a href="#">Aliquam tincidunt mauris</a></li>
					 <li><a href="#">Vestibulum auctor dapibus  lipsum</a></li>
					 <li><a href="#">Nunc dignissim risus consecu</a></li>
					 <li><a href="#">Cras ornare tristiqu</a></li>
					 </ul>
				 </div>
				 <div class="comments">
					 <h3>LOGIN</h3>
					<form action="includes/login.php" method="post">
					<div class="form-group">
					<input type="text" name="username" id="" placeholder = "username" class="form-contro">
					</div>
					<div class="input-group">
					<input type="password" name="password" id="" placeholder = "password" class="form-contro"><span class="input-group-btn">
					<button class="btn btn-primary" name="login" type="submit">submit</button>
					</span>
					</div>
					
					</form>
				 </div>
				 <div class="clearfix"></div>
				 <div class="archives">
					 <h3>ARCHIVES</h3>
					 <ul>
					 <li><a href="#">October 2013</a></li>
					 <li><a href="#">September 2013</a></li>
					 <li><a href="#">August 2013</a></li>
					 <li><a href="#">July 2013</a></li>
					 </ul>
				 </div>
				 <div class="categories">
					 <h3>CATEGORIES</h3>
					 <ul>

                     <?php 
                         $query = "SELECT * FROM  categories";
                         $select_all_categories_sidebar = mysqli_query($conn, $query);
                         while ($row = mysqli_fetch_array($select_all_categories_sidebar)) {
  
						  $cat_title = $row['cat_title'];
						  $cat_id = $row['cat_id'];
  
                          echo "<li><a href='category.php?cat_id=$cat_id'>{$cat_title}</a></li>";
                         } 
                     ?>
					 <!-- <li><a href="#">Vivamus vestibulum nulla</a></li>
					 <li><a href="#">Integer vitae libero ac risus e</a></li>
					 <li><a href="#">Vestibulum commo</a></li>
					 <li><a href="#">Cras iaculis ultricies</a></li> -->
					 </ul>
				 </div>
				 <div class="clearfix"></div>
			  </div>
			  <div class="clearfix"></div>
		  </div>
	  </div>
</div>