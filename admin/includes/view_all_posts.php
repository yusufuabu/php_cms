<?php
deletePost();

if(isset($_POST['checkBoxArray'])){
    foreach ($_POST['checkBoxArray'] as $checkBoxValue) {
        $bulk_options = $_POST['bulk_options'];

        switch ($bulk_options) {
            case 'published':
                $query = "UPDATE posts SET post_status = '{$bulk_options}' Where post_id ='{$checkBoxValue}'";
                $update_post = mysqli_query($conn, $query);
                break;

                case 'draft':
                $query = "UPDATE posts SET post_status = '{$bulk_options}' Where post_id ='{$checkBoxValue}'";
                $update_post = mysqli_query($conn, $query);
                break;

                case 'delete':
                $query = "DELETE FROM posts WHERE post_id = '{$checkBoxValue}'";
        $delete_query = mysqli_query($conn, $query);
                break;

                case 'clone':
                $query = "SELECT * FROM  posts WHERE post_id = '{$checkBoxValue}'";
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

                }

                $query = "INSERT INTO posts(post_category_id,post_title,post_author,post_date, post_image,post_content,post_tags,post_comment_count,post_status) VALUES ('$post_category','$post_title','$post_author',' $post_date','$post_image','$post_content','$post_tags','$post_comment','$post_status')";
    $add_post = mysqli_query($conn, $query);
    if($add_post){
        // echo "<p class='alert alert-success alert-dismiss'>Record added </p>";
    } else {
        die("query failed". mysqli_error($conn));
    }
                break;
            
            
            default:
                # code...
                break;
        }
    }
}
?>

<form action="" method="post">
<table class="table table-bordered table-hover table-striped">
    <div id="bulkOptionContainer" class="col-xs-4">
        <select name="bulk_options" id="" class="form-control">
            <option value="">Select option</option>
            <option value="published">Publish</option>
            <option value="draft">Draft</option>
            <option value="delete">Delete</option>
            <option value="clone">Clone</option>
        </select>
    </div>

    <div class="col-xs-4">
        <input type="submit" name="submit" class="btn btn-success" value="Apply">
        <a href="post.php?source=add_post" class="btn btn-primary">Add new</a>
    </div>
                           <thead>
                               <tr>
                                   <th><input type="checkbox" name="" id="selectAllBoxes"></th>
                                   <th> ID</th>
                                   <th>Author</th>
                                   <th>Title</th>
                                   <th>Category</th>
                                   <th>Status</th>
                                   <th>Image</th>
                                   <th>tags</th>
                                   <th>Comments</th>
                                   <th>Date</th>
                                   <th>View Post</th>
                                   <th>Edit</th>
                                   <th>Delete</th>
                               </tr>
                           </thead>
                           <tbody>
                            <?php 
                                $query = "SELECT * FROM posts";
                                $run_query = mysqli_query($conn, $query);
                                while ($row = mysqli_fetch_array($run_query)){
                                    $author = $row['post_author'];
                                    $id = $row['post_id'];
                                    $title = $row['post_title'];
                                    $category_id = $row['post_category_id'];
                                    $status = $row['post_status'];
                                    $image = $row['post_image'];
                                    $tags = $row['post_tags'];
                                    $comments = $row['post_comment_count'];
                                    $date = $row['post_date'];


                               
                            ?>

                               <tr>
                                 
                               <td><input type="checkbox" name="checkBoxArray[]" value="<?php  echo $id;   ?>" id="" class="checkBoxes"></td>
                                   <td><?php echo $id; ?></td>
                                   <td><?php echo $author; ?></td>
                                   <td><?php echo $title; ?></td>
                                   <td>
                                <?php 
                                $query = "SELECT * FROM categories WHERE cat_id = '{$category_id}'";
                                $select_category = mysqli_query($conn, $query);
                                while ($row = mysqli_fetch_array($select_category)){
                                    echo $row['cat_title'];                                }
                                ?>
                                </td>
                                   <td><?php echo $status; ?></td>
                                   <td><img src="../images/<?php echo $image; ?>" width="100" height="100" alt=""></td>
                                   <td><?php echo $tags; ?></td>
                                   <td><?php echo $comments; ?></td>
                                   <td><?php echo $date; ?></td>
                                   <td><a href="../post.php?id=<?php echo $id ?>" class="btn btn-primary"> View</a></td>
                                   <td><a class="btn btn-warning" href="post.php?source=edit&&post_id=<?php echo $id ?>">Edit</a></td>
                                   <td><a onClick="javascript: return confirm('Are you sure you wat to delete' );" href="post.php?delete=<?php echo $id; ?>" class="btn btn-danger">delete</a></td>
                         </tr>
                                <?php 
                                     }
                                ?>
                              
                           </tbody>
                       </table>
                       </form>