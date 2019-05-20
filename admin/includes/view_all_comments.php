<?php
deleteComments();
approve();
unapprove();
?>


<table class="table table-bordered table-hover table-striped">
                           <thead>
                               <tr>
                                   <th> ID</th>
                                   <th>Post Id</th>
                                   <th>Author</th>
                                   <th>Email</th>
                                   <th>Content</th>
                                   <th>In response to</th>
                                   <th>Status</th>
                                   <th>Date</th>
                                   <th>Approve</th>
                                   <th>Unapprove</th>
                                   <th>Delete</th>
                               </tr>
                           </thead>
                           <tbody>
                            <?php 
                              $query = "SELECT * FROM  comments";
    $select_all_categories_sidebar = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_array($select_all_categories_sidebar)) {
       $comment_id = $row['comment_id'];
       $comment_post_id = $row['comment_post_id'];
       $comment_author = $row['comment_author'];
       $comment_email = $row['comment_email'];
       $comment_content = $row['comment_content'];
       $comment_status = $row['comment_status'];
       $comment_date = $row['comment_date'];
    //    $post_comment = $row['post_comment_count'];
    //    $post_date = $row['post_date'];
    


    
    ?>
                               <tr>
                                   <td><?php echo $comment_id ?></td>
                                   <td><?php echo $comment_post_id ?></td>
                                   <td><?php echo $comment_author ?></td>
                                   <td><?php echo $comment_email?></td>
                                   <td><?php echo $comment_content ?></td>
                                   <?php 
                                            $query = "SELECT * FROM  posts WHERE post_id = '$comment_post_id ' ";
                                            $get_post_title = mysqli_query($conn, $query);
                                            while ($row = mysqli_fetch_array($get_post_title)) {
                                              $post_id = $row['post_id'];
                                             $post_title = $row['post_title'];
                                    ?>

                                   <td><a href="../post.php?id=<?php echo $post_id; ?>"><?php echo $post_title ?></a></td>

                                   <?php } ?>
                                   <td><?php echo $comment_status?></td>
                                   <!-- <td><?php echo $post_comment ?></td> -->
                                   <td><?php echo $comment_date ?></td>
                                   <td><a href="comments.php?approve=<?php echo $comment_id; ?>" class="btn btn-success">Approve</a></td>
                                   <td><a href="comments.php?unapprove=<?php echo $comment_id; ?>" class="btn btn-warning">Unapprove</a></td>
                                   <td><a href="comments.php?delete=<?php echo $comment_id; ?>" class="btn btn-danger">Delete </a></td>
                                   <!-- <td><a class="btn btn-danger" href="post.php?delete=<?php echo $post_id ?>">Delete</a></td>
                                   <td><a class="btn btn-warning" href="post.php?source=edit&&post_id=<?php echo $post_id ?>">Edit</a></td> -->
                               </tr>

                               <?php 
                                }
                               ?>
                           </tbody>
                       </table>