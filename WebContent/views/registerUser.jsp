<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign-Up</title>
<style>
/* Style inputs, select elements and textareas */
input[type=text], select, textarea{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  resize: vertical;
}

h1 {
  text-align: center;
}

/* Style the label to display next to the inputs */
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

/* Style the submit button */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

/* Style the container */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

/* Floating column for labels: 25% width */
.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

/* Floating column for inputs: 75% width */
.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

}
</style>

</head>

<body>


<h1>Fill in your details</h1>

<br>

<form action="<%= request.getContextPath() %>/register" method="post">

<div class="row">
	<div class="col-25">
  		<label for="fname">First Name:</label>
  	</div>
  	<div class="col-75">
  		<input type="text" id="fname" name="fname" placeholder="Enter your first name">
	</div>
</div>
<div class="row">
	<div class="col-25">
  		<label for="lname">Last Name:</label>
  	</div>
  	<div class="col-75">
  		<input type="text" id="lname" name="lname" placeholder="Enter your last name">
  	</div>
</div>
<div class="row">
  	<div class="col-25">
  		<label for="age">Age:</label>
  	</div>
	<div class="col-75">
  		<input type="text" id="age" name="age" placeholder="Enter your age">
  	</div>
</div>
<div class="row">
  	<div class="col-25">
  		<label for="email">Email Address:</label>
  	</div>
	<div class="col-75">
  		<input type="text" id="email" name="email" placeholder="Enter your email address">
  	</div>	
</div>
<div class="row">
  	<div class="col-25">	
  		<label for="mobileNumber">Mobile Number:</label>
  	</div>
  	<div class="col-75">
  		<input type="text" id="mobileNumber" name="mobileNumber" placeholder="Enter your mobile number">
  	</div>
</div>	
  	
<div class="row">
	<div class="col-25">
  		<p>Gender:</p>
  	</div>
  	<div class="col-75">
  		<input type="radio" id="male" name="gender" value="Male">
		<label for="male">Male</label>
  		<input type="radio" id="female" name="gender" value="Female">
  		<label for="female">Female</label>
	</div>
</div>
<div class="row">
	<div class="col-25">  
  		<label for="address">Home Address:</label>
  	</div>
  	<div class="col-75">
  		<input type="text" id="address" name="address" placeholder="Enter your home address">
  	</div>
</div>

<br>

  <input type="submit" value="Submit">
</form>


</body>
</html>