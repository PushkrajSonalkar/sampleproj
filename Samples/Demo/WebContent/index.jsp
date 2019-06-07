<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="shortcut icon" href="#" />
<title>Welcome Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		body {
		font-family: Arial, Helvetica, sans-serif;
		background-color: aliceblue;
		}
		
		/* Full-width input fields */
		input[type=text], input[type=password] {
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  box-sizing: border-box;
		}
		
		/* Set a style for all buttons */
		button {
		  background-color: cornflowerblue;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		}
		
		button:hover {
		  opacity: 0.8;
		}
		
		/* Extra styles for the cancel button */
		.cancelbtn {
		  width: auto;
		  padding: 10px 18px;
		  background-color: #f44336;
		}
		
		/* Center the image and position the close button */
		.imgcontainer {
		  text-align: center;
		  margin: 24px 0 12px 0;
		  position: relative;
		}
		
		img.avatar {
		  width: 40%;
		  border-radius: 50%;
		}
		
		.container {
		  padding: 16px;
		}
		
		span.psw {
		  float: right;
		  padding-top: 16px;
		}
		
		/* The Modal (background) */
		.modal {
		  display: none; /* Hidden by default */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Sit on top */
		  left: 0;
		  top: 0;
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		  padding-top: 60px;
		}
		
		/* Modal Content/Box */
		.modal-content {
		  background-color: #fefefe;
		  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
		  border: 1px solid #888;
		  width: 80%; /* Could be more or less, depending on screen size */
		}
		
		/* The Close Button (x) */
		.close {
		  position: absolute;
		  right: 25px;
		  top: 0;
		  color: #000;
		  font-size: 35px;
		  font-weight: bold;
		}
		
		.close:hover,
		.close:focus {
		  color: red;
		  cursor: pointer;
		}
		
		/* Add Zoom Animation */
		.animate {
		  -webkit-animation: animatezoom 0.6s;
		  animation: animatezoom 0.6s
		}
		
		@-webkit-keyframes animatezoom {
		  from {-webkit-transform: scale(0)} 
		  to {-webkit-transform: scale(1)}
		}
		  
		@keyframes animatezoom {
		  from {transform: scale(0)} 
		  to {transform: scale(1)}
		}
		
		/* Change styles for span and cancel button on extra small screens */
		@media screen and (max-width: 300px) {
		  span.psw {
		     display: block;
		     float: none;
		  }
		  .cancelbtn {
		     width: 100%;
		  }
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-sm-4 col-md-4 col-xl-4"></div>
			<div class="col-lg-4 col-sm-4 col-md-4 col-xl-4">
				<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Admin Login</button>
				<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">User Login</button>
			</div>
			<div class="col-lg-4 col-sm-4 col-md-4 col-xl-4"></div>
		</div>
	</div>
	<div id="id01" class="modal">
		<form class="modal-content animate" action="Admin_login" method="post">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
		    </div>
		
		    <div class="container">
		      <label for="uname"><b>Username</b></label>
		      <input type="text" placeholder="Enter Username" name="Adminuname" required>
		
		      <label for="psw"><b>Password</b></label>
		      <input type="password" placeholder="Enter Password" name="Adminpsw" required>
		        
		      <button type="submit">Login</button>
		      
		    </div>
		
		    <div class="container" style="background-color:#f1f1f1">
		      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
		      
		    </div>
	  	</form>
	</div>

	<!--Modal for user login  -->
	<div id="id02" class="modal">
		<form class="modal-content animate" action="User_login.php">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
		    </div>
		
		    <div class="container">
		      <label for="uname"><b>Username</b></label>
		      <input type="text" placeholder="Enter Username" name="Useruname" required>
		
		      <label for="psw"><b>Password</b></label>
		      <input type="password" placeholder="Enter Password" name="Userpsw" required>
		        
		      <button type="submit">Login</button>
		     
		    </div>
		
		    <div class="container" style="background-color:#f1f1f1">
		      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
		    </div>
	  	</form>
	</div>
	<script>
		// Get the modal
		var modal = document.getElementById('id01');
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
		// Get the modal
		var modal = document.getElementById('id02');
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
	</script>
</body>
</html>