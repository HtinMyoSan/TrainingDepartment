<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 70vh;
}
 
.form-table td {
  padding: 10px;
}
.form-label {
 font-size: 18px;
 margin-bottom: 5px;
 width: 100%;
    }
.form-table input[type="text"],
.form-table input[type="email"],
.form-table select,
.form-table input[type="date"] {
  width: 100%;
  padding: 10px;
  font-size: 14px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}

.form-table input[type="submit"],
.form-table input[type="reset"] {
  margin-top: 10px;
  padding: 8px 16px;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
}
h1 {
  color: #F4D03F ;
}
.btn-success {
  background-color: red;
}
</style>
<title>Registration</title>
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
  
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    <!-- Links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link " href="index.jsp">HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Registration">REGISTRATION</a>
      </li>

    </ul>
    <div class=" justify-content-end collapse navbar-collapse" id="collapsibleNavbar">
      <!--Department Name -->
  <a class="navbar-brand" href="index.jsp">Training Department</a>
    </div>
  </div>  
  </div>
</nav>
<!-- End of Navigation section-->  
<br><br><br>

 <div  class="container-fluid"><h1 class="text-center">TRAINING DEPARTMENT</h1></div>
 
 
 <div class="container">
  <form action="Registration" method="post" style="background-color: #A2D9CE">
    <table class="form-table">
      <tr>
        <td colspan="2" style="text-align: center;">
          <h3>Registration Form</h3>
        </td>
      </tr>
      <tr>
        <td><label for="name" class="form-label">Name:</label></td>
        <td><input type="text" name="name" placeholder="Enter your name" required></td>
      </tr>
      <tr>
        <td><label for="email" class="form-label">E-mail:</label></td>
        <td><input type="email" name="email" placeholder="Enter your email" required></td>
      </tr>
      <tr>
        <td><label for="dob" class="form-label">Date of Birth:</label></td>
        <td><input type="date" name="dob" required></td>
      </tr>
      <tr>
        <td><label for="course" class="form-label">Courses:</label></td>
        <td>
          <%
          List<String> courses = new ArrayList<String>();
          if (request.getAttribute("cl") != null) {
            courses = (List<String>)request.getAttribute("cl");
          }
          %>
          <select name="course">
            <% for (String each : courses) { %>
            <option><%= each %></option>
            <% } %>
          </select>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <div class="d-flex justify-content-between">
           <button type="submit" value="Submit" class="btn btn-primary">Submit</button>
           <button type="reset" value="Reset" class="btn btn-danger">Reset</button>
          </div>
        </td>
      </tr>
    </table>
  </form>
</div>



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
          <a href="https://www.facebook.com" target="_blank"> <i class="fa fa-facebook-official" style="font-size:36px"></i></a>
          <a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram" style="font-size:36px"></i></a>
          <a href="https://www.instagram.com" target="_blank"><i class="fa fa-linkedin" style="font-size: 36px;"></i></a>
      </div>
    </div>  
 </div>
 </footer>
<!--End Footer Section -->
</body>
</html>