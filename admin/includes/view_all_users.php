<?php
deleteUsers();
approve();
unapprove();
?>


<table class="table table-bordered table-hover table-striped">
                           <thead>
                               <tr>
                                   <th> ID</th>
                                   <th>Username</th>
                                   <th>Firstname</th>
                                   <th>Lastname</th>
                                   
                                   <th>email</th>
                                  
                                   <th>image</th>
                                   <th>role</th>
                                   
                               </tr>
                           </thead>
                           <tbody>
                            <?php 
                              $query = "SELECT * FROM  users";
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
                               <tr>
                                   <td><?php echo $id ?></td>
                                   <td><?php echo $username ?></td>
                                   <td><?php echo $firstname ?></td>
                                   <td><?php echo $lastname ?></td>
                                   
                                   <td><?php echo $email ?></td>
                                   <td><img src="../images/<?php echo $image ?>" width ="100" alt=""></td>
                                   <td><?php echo $role ?></td>
                                   <td><a href="comments.php?approve=<?php echo $id; ?>" class="btn btn-success">Approve</a></td>
                                   <td><a href="comments.php?unapprove=<?php echo $id; ?>" class="btn btn-primary">Unapprove</a></td>
                                   <td><a href="users.php?source=edit&edit=<?php echo $id; ?>" class="btn btn-">Edit </a></td>
                                   <td><a href="users.php?delete=<?php echo $id; ?>" class="btn btn-danger">Delete </a></td>
                                   

                                  
                               </tr>

                               <?php 
                                }
                               ?>
                           </tbody>
                       </table>