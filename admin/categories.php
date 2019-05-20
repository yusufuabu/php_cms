<?php

include "includes/admin_header.php";
?>

    <div id="wrapper">

        <!-- Navigation -->
       <?php 
            include "includes/admin_navigation.php"
       ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome
                            <small>Author</small>
                        </h1>
                        <div class="col-xs-6">
                            <!--ADDING NEW CATEGORY -->
                            <?php
                                 insert_categories();
                            ?>
                            <form action="" method="post">
                                <div class="form-group">
                                    <label for="cat_title ">Add category</label>
                                    <input type="text" name="cat_title" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="submit" Value="Add category" class="btn btn-primary ">
                                </div>

                            </form>
                        </div>
                        <div class="col-xs-6">
                            <!-- DELETING A CATEGORY -->
                        <?php 
                                deleteCategory();
                        ?>
                            <table class="table table-striped table-bordered table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>Id</th>
                                        <th>Category Title</th>
                                        <th class="col-span-2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                <!--FETCHING ALL CATEGORIES -->
                                <?php 
                                    findAllCategories();
                                ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-xs-6">
                            <!--EDITING CATEGORY -->

                            
                            <?php
                                 updateCategories();
                            if (isset($_GET['edit'])){

                                $cat_id = $_GET['edit'];
                                $cat_title = $_GET['cat_title'];
                               
                                ?>
                                <form action="" method="post">
                                    <div class="form-group">
                                        <label for="cat_title ">Edit category</label>
                                        <input type="text" value="<?php echo $cat_title ?>"name="cat_title" class="form-control">
                                        <input type="hidden" name="cat_id" value="<?php echo $cat_id ?>">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" name="update" Value="Update Category" class="btn btn-Warning ">
                                    </div>
    
                                </form>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

   <?php 
    include "includes/admin_footer.php";
   ?>