<?php
session_start();
require_once('dashboard/include/connection.php');
?>
<!DOCTYPE html>
<html lang="ar">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>كتب pdf</title>
    <!-- favicon -->
    <link rel="icon" type="image/png" href="layout/images/book.png">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="layout/css/bootstrap.min.css">
    <!-- Bootstrap RTL -->
    <link rel="stylesheet" href="layout/css/bootstrap-rtl.css">
    <!--  Custom css  -->
    <link rel="stylesheet" href="layout/css/custom.css">
    <!-- Font -->
    <link rel="stylesheet" href="layout/font/droid-kufi.css">
</head>

<body>

    <!--    Start navbar    -->
    <nav class="navbar navbar-expand-sm navbar-light">
        <div class="container">
            <a href="index.php" class="navbar-brand">كتب pdf</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="menu">
                <ul class="navbar-nav ml-auto">
                
                    <?php
                    if (isset($_SESSION['adminInfo'])) {
                    ?>
                        <a href="dashboard/dashboard.php" target="_blank" class="dashboard-btn" style=" color:  #1f847d;;
  padding: 5px;
  border: 1px solid var(--main-color);
  border-radius: 5px;
  width: 120px;
  text-align: center;
  transition: 0.3s;">لوحة التحكم</a>
                    <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
    </nav>
    <!--    End navbar    -->