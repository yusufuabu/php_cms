<?php 

function escape($string){
    global $conn;

    return mysqli_real_escape_string($conn, $string);
}

function users_online(){

    if(isset($_GET['onlineusers'])){
    global $conn;

    if(!$conn) {
        session_start();
        include("../includes/db.php");
        $session = session_id();
        $time = time();
        $time_out_in_seconds = 60;
        $time_out = $time - $time_out_in_seconds;
        
        $query = "SELECT * FROM users_online WHERE session = '{$session}'";
        $get_result = mysqli_query($conn, $query);
        $count = mysqli_num_rows($get_result);
        
        if($count==NULL) {
            mysqli_query($conn, "INSERT INTO users_online (session,time) VALUES ('{$session}','{$time}')");
        } else {
            mysqli_query($conn, "UPDATE users_online SET time = '{$time}' WHERE session = '{$session}'");
        }
        
        $users_online = mysqli_query($conn, "SELECT * FROM users_online WHERE time > '$time_out'");
        echo $count_user = mysqli_num_rows($users_online);
    }

} 

}
users_online();


function insert_categories() {
    global $conn;
    if(isset($_POST['submit'])) {
        $cat_title = $_POST['cat_title'];
        if($cat_title == "" ||  empty($cat_title)) {
            echo "<p class='alert alert-danger dismiss' data-dismiss='dismiss'> Field Empty </p>";
        } else {
        $query = "INSERT INTO categories (cat_title) VALUES ('{$cat_title}')";
        $add_category = mysqli_query($conn, $query);
        if($add_category){
            echo "<p class='alert alert-success ' data-dismiss='alert'>Category added $cat_title </p>";
        } else {
            die("query failed". mysqli_error($conn));
        }
    }

}


}

Function findAllCategories() {
    global $conn;

    $query = "SELECT * FROM  categories";
    $select_all_categories_sidebar = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_array($select_all_categories_sidebar)) {
       $cat_id = $row['cat_id'];
     $cat_title = $row['cat_title'];

     
    
    ?>
               <tr>
                   <td><?php echo $cat_id; ?></td>
                   <td><?php echo $cat_title; ?></td>
                   <td><a class ="btn btn-danger" href="categories.php?delete=<?php echo $cat_id; ?>">DELETE</a></td>
                   <td><a class ="btn btn-warning" href="categories.php?edit=<?php echo $cat_id; ?>&&cat_title=<?php echo $cat_title; ?>">EDIT</a></td>
               </tr>
    <?php }


}

function updatecategories(){
    global $conn;
    if(isset($_POST['update'])) {
        $cat_title = $_POST['cat_title'];
        $cat_id = $_POST['cat_id'];
        if($cat_title == "" ||  empty($cat_title)) {
            echo "<p class='alert alert-danger dismiss' data-dismiss='alert'> Field Empty </p>";
        } else {
        $query = "UPDATE  categories SET cat_title = '{$cat_title}' WHERE cat_id = '{$cat_id}'";
        $add_category = mysqli_query($conn, $query);
        if($add_category){
            echo "<p class='alert alert-success alert-dismiss'>Record Updated </p>";
            header("location: categories.php");
        } else {
            die("query failed". mysqli_error($conn));
        }
    }

}
}

function deleteCategory() {
    global $conn;
    if(isset($_GET['delete'])){
        $delete_id = $_GET['delete'];
        $query = "DELETE FROM categories WHERE cat_id = '{$delete_id}'";
        $delete_query = mysqli_query($conn, $query);
        if($delete_query){
            echo "<p class='alert alert-success' data-dismiss='alert'>category Deleted </p>";
            header("location: categories.php");
        }
    }
}

function deletePost() {
    global $conn;
    if(isset($_GET['delete'])){
        $delete_id = $_GET['delete'];
        $query = "DELETE FROM posts WHERE post_id = '{$delete_id}'";
        $delete_query = mysqli_query($conn, $query);
        if($delete_query){
            echo "<p class='alert alert-success' data-dismiss='alert'>Post Deleted </p>";
            // header("location: categories.php");
        }
    }
}

function deleteComments() {
    global $conn;
    if(isset($_GET['delete'])){
        $delete_id = $_GET['delete'];
        $query = "DELETE FROM comments WHERE comment_id = '{$delete_id}'";
        $delete_query = mysqli_query($conn, $query);
        if($delete_query){
            echo "<p class='alert alert-success' data-dismiss='alert'>Comment Deleted </p>";
            // header("location: categories.php");
        }
    }
}

function approve() {
    global $conn;
    if(isset($_GET['approve'])){
        $approve_id = $_GET['approve'];
        $query = "UPDATE comments SET comment_status = 'Approved' WHERE comment_id = '{$approve_id}'";
        $approve_query = mysqli_query($conn, $query);
        if($approve_query){
            echo "<p class='alert alert-success' data-dismiss='alert'>Comment Approved </p>";
            // header("location: categories.php");
        }
    }
}

function unapprove() {
    global $conn;
    if(isset($_GET['unapprove'])){
        $unapprove_id = $_GET['unapprove'];
        $query = "UPDATE comments SET comment_status = 'Unapproved' WHERE comment_id = '{$unapprove_id}'";
        $unapprove_query = mysqli_query($conn, $query);
        if($unapprove_query){
            echo "<p class='alert alert-success' data-dismiss='alert'>Comment Unapproved </p>";
            // header("location: categories.php");
        }
    }
}

function deleteUsers() {
    global $conn;
    if(isset($_GET['delete'])){
        if(isset($_SESSION['user_role'])){
            if ($_SESSION['user_role'] == 'admin') {
                $delete_id = mysqli_real_escape_string($conn, $_GET['delete']);
        $query = "DELETE FROM users WHERE id = '{$delete_id}'";
        $delete_query = mysqli_query($conn, $query);
        if($delete_query){
            echo "<p class='alert alert-success' data-dismiss='alert'>User Deleted </p>";
            // header("location: categories.php");
            }
        }
        
        }
    }
}

function recordCount($table) {
    global $conn;

    $query = "SELECT * FROM ". $table;
                            $select_post = mysqli_query($conn, $query);
                           return $select_post_row = mysqli_num_rows($select_post);
}
?>