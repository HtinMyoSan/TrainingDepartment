<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>


h2 {
  color: #F4D03F ;
}
.gg{
color: #FAE5D3;
}
body {
    font-family: Arial, sans-serif;
    background-color: green;
}

p {
    line-height: 1.6;
    margin-bottom: 20px;
    color: #FCF516  ;
}

.button-container {
    text-align: center;
    margin-top: 30px;
}
   
.course-list {
    margin-top: 30px;
}

.course-list ul {
    list-style-type: disc;
    padding-left: 20px;
    color:yellow;
}
</style>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: #148F77;" >
<!-- Start of Navigation section-->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <div class="container-fluid">
  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <!-- Links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Registration">REGISTRATION</a>
        </li>
      </ul>
      <div class="justify-content-end collapse navbar-collapse" id="collapsibleNavbar">
        <!--Department Name -->
        <a class="navbar-brand" href="index.jsp">Training Department</a>
      </div>
    </div>  
  </div>
</nav>
<!-- End of Navigation section-->
<br><br><br><br>
<div style="text-align: center"><h2>WELCOME TO TRAINING DEPARTMENT</h2></div>
<br>
<div class="container-fluid">
  <div class="row"></div>
  <div class="row">
    <div class="col-md-6">
      <div>
        <img src="images/1.jpg" class="img-fluid" alt="Training Department Image">
      </div>
    </div>
    <div class="col-md-6">
      <p>Thank you for visiting the website of our Training Department. We are dedicated to providing high-quality training programs to help individuals enhance their skills and knowledge in various areas.</p>
      <p>Join our upcoming courses to enhance your skills and knowledge.</p>
      <p><strong>Schedule:</strong><br>
      Morning session (9 AM - 11 AM) - Advance Excel<br>
      Afternoon session (12 PM - 2 PM) - Advance Microsoft Word<br>
      Evening session (3 PM - 5 PM) - Programming
      </p>
      <div class="course-list">
        <p><b>Courses:</b></p>
        <ul class="gg">
          <li>Advance Excel(Morning)</li>
          <li>Advance Microsoft Word(Afternoon)</li>
          <li>Programming(Evening)</li>
        </ul>
        <div class="button-container">
          <a href="Registration" class="btn btn-outline-dark btn-lg mybtn1" role="button" style="background-color: #9A89F5;">Register Now</a>
        </div>
      </div>
    </div>
  </div>
</div>
<br><br>
<!--Start Footer Section -->
<footer class="bg-dark text-dark pt-5 pb-4">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6" style="text-align: center;">
        <a class="text-muted" href="#">Contact Us</a><br>
        <a class="text-muted" href="#">About Us</a><br>
      </div>
      <div class="col-sm-6" style="text-align: center;">
        <h4 class="text-warning">Social Media</h4><br>
        <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook-official" style="font-size:36px"></i></a>
        <a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram" style="font-size:36px"></i></a>
        <a href="https://www.linkedin.com/feed/" target="_blank"><i class="fa fa-linkedin" style="font-size: 36px;"></i></a>
      </div>
    </div>  
  </div>
</footer>
<!--End Footer Section -->
</body>
</html>