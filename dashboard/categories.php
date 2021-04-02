<?php
session_start();
include 'include/connection.php';
include 'include/header.php';
if (!isset($_SESSION['adminInfo'])) {
  header('Location:index.php');
  exit;
} else {

  ?>

   <!-- /#sidebar-wrapper -->

  
  <!-- Page Content -->
  <?php 
 if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $category = $_POST['category'];
  if (empty($category)) {
    $catErro =  "<div class='alert alert-danger'>" . "الرجاء ملء الحقل أدناه" . "</div>";
  } else {
    $query = "INSERT INTO categories(categorie_name) VALUES('$category')";
    $result = mysqli_query($conn, $query);
    if (isset($result)) {
      $catSuccess =  "<div class='alert alert-success'>" . "تم إضافة التصنيف بنجاح" . "</div>";
    }
  }
}






?>












  <div class="container-fluid">
  <?php
      if (isset($catErro)) {
        echo $catErro;
      }
      if (isset($catSuccess)) {
        echo $catSuccess;
      }
      ?>
 
  <div class ="add_cat">
  <form action="<?php echo$_SERVER['PHP_SELF'];?>" method='post'>
  <div class="form-group">
  <label for="cat">اضافه تصنيف </label>
  <input type="text" id='cat'class="form-control" name="category">
  
  
  
  </div>
  <button class="custom-btn">اضافة</button>
  
  </form>
  
  </div>
  
  
  <div class="show-cat">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">الرقم</th>
              <th scope="col">عنوان التصنيف</th>
              <th scope="col">تاريخ الإضافة</th>
              <th scope="col">الإجراء</th>
            </tr>
          </thead>
          <tbody>
              <!-- Fetch categories from database -->
              
  
  <?php
 
  if (isset($_GET['page'])) {
    $page=$_GET['page'];
  }
  else{

$page=1;

  }
  $limit=4;
  $start=($page-1)*$limit;
   $query = "SELECT * FROM  categories ORDER BY id DESC LIMIT $start ,$limit ";
   $result = mysqli_query($conn,$query);
   
   $n=0;
   while ($row =mysqli_fetch_assoc($result)) {
   $n++;
?>
 <tr>
                <td><?php echo $n; ?></td>
                <td><?php echo $row['categorie_name']; ?></td>
                <td><?php echo $row['categorie_data']; ?></td>
                <td>
                  <a href="edit-cat.php?id=<?php echo $row['id']; ?>" class="custom-btn">تعديل</a>
                  <a href="categories.php?id=<?php echo $row['id']; ?>" class="custom-btn confirm">حذف</a>
                </td>
              </tr>


<?php
   }
   ?>
  </tbody>
        </table>
        <?php
        $query="SELECT * FROM  categories";
        $result = mysqli_query($conn,$query);
        $total_cat=mysqli_num_rows($result);
      
        $total_pages=ceil($total_cat/$limit);
      
       
        
        
        
        
        
        
        
        
        
        ?>
        <nav aria-label="Page navigation example">
        <ul class="pagination">
    <li class="page-item"><a class="page-link" href="categories.php?page=<?php if (($page - 1) > 0) {
                                                                                    echo  $page - 1;
                                                                                  } else {
                                                                                    echo 1;
                                                                                  }

                                                                                  ?>">السابق</a></li>
    <?php 
    for($i=1;$i<=$total_pages;$i++){
      ?>
<li class="page-item"><a class="page-link" href="categories.php?page=<?php echo$i;?>"><?php echo$i;?></a></li>
<?php } ?>
  
    
  
   
 
    <li class="page-item"><a class="page-link" href="categories.php?page=<?php
                                                                                  if (($page + 1) < $total_pages) {
                                                                                    echo $page + 1;
                                                                                  } elseif (($page + 1) >= $total_pages) {
                                                                                    echo $total_pages;
                                                                                  }
                                                                                  ?>">التالي</a></li>
  </ul>
</nav>
  
  </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </div>
    
      <?php
  include 'include/footer.php';
  ?>

<?php
}
?>