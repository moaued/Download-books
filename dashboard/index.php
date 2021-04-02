<?php 
  session_start();
    include 'include/connection.php';
    if(isset($_SESSION['adminInfo'])){
      header('Location:dashboard.php');
  }
  else{
      
        
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>تسجيل الدخول</title>
    <!-- Bootstrap and Bootstrap Rtl -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-rtl.css">
    <!-- Custom css -->
    <link rel="stylesheet" href="css/dashboard.css">

<style>
  .login{
    width: 300px;
    margin: 80px auto;
    font-family: janna lt;
  }
  .login h5{
    color: #555;
    margin-bottom: 30px;
    margin-top: 10px;
    text-align: center;
  }
  .login button{
    margin-right: 80px;
    padding: 5px;
    width: 140px;
    background: #00b593;
    border: 1px solid #00b593;
    color: #fff;
  }
</style>

</head>

<body>

<?php 
error_reporting(0);
if (isset($_POST['log'])) {
$adminInfo=$_POST['adminInfo'];
$adminPass=$_POST['adminPass'];
 
            //check if inputs are not empty
            if(empty($adminInfo) || empty($adminPass)){
              echo "<div class='alert alert-danger'>" . "الرجاء مل الحقول أدناه" . "</div>";
          }
          else{
            $query = "SELECT * FROM login WHERE (adminName='$adminInfo' OR adminEmail='$adminInfo') AND adminPass='$adminPass'";
            $result = mysqli_query($conn,$query);
            $row = mysqli_num_rows($result);
            
            if($row > 0){
              $_SESSION['adminInfo'] = $adminInfo;
                header('Location:dashboard.php');
            }
            else{
                echo "<div class='alert alert-danger'>" . "البيانات غير متطابقة الرجاء المحاولة مرة أخرى" . "</div>";
            }
        }
    }










?>





  <div class="login">
<!-- Log to dashboard  -->
   
    <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST">
      <h5>تسجيل الدخول</h5>
      <div class="form-group">
        <label for="mail"> إسم المستخدم أو البريد الإلكتروني</label>
        <input type="text" class="form-control"  id="mail" name="adminInfo"/>
      </div>
      <div class="form-group">
        <label for="pass">كلمة السر</label>
        <input type="password" class="form-control"  id="pass" name="adminPass"/>
      </div>
      <button class="custom-btn" name="log">تسجيل الدخول</button>
    </form>
  </div>
  <?php 
  };
  ?>
  <?php
    include 'include/footer.php';
  ?>



