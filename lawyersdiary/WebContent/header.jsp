<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body{
background-color:#E73F25;
}
header{
margin-top:10px;

background-image:url("images/black.jpg");
}
.dropbtn {

    
     font-size: 20px; 
   border-radius: 25px;
    width: 100px;
     border: 2px solid; 
     background-color: black; 
   color: white;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}


.dropbtn1 {
   font-size: 20px; 
   border-radius: 25px;
    width: 100px;
     border: 2px solid; 
     background-color: black; 
   color: white;
  /*  cursor: pointer; */
}

.dropbtn1:hover, .dropbtn1:focus {
    background-color: #3e8e41;
}

.dropdown1 {
   /* position: relative;*/
    display: inline-block;
}

.dropdown-content1 {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
   box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.2);
  /*z-index: 1;*/
}

.dropdown-content1 a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown1 a:hover {background-color: #f1f1f1}
.show1 {display:block;}




.dropbtn2 {
   font-size: 20px; 
   border-radius: 25px;
    width: 100px;
     border: 2px solid; 
     background-color: black; 
   color: white;
  /*  cursor: pointer;*/
}

.dropbtn2:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown2 {
   /* position: relative;*/
    display: inline-block;
}

.dropdown-content2 {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
   box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.2);
  /*z-index: 1;*/
}

.dropdown-content2 a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown2 a:hover {background-color: #f1f1f1}

.show2 {display:block;}



.dropbtn3 {
   font-size: 20px; 
   border-radius: 25px;
    width: 100px;
     border: 2px solid; 
     background-color: black; 
   color: white;
  /*  cursor: pointer;*/
}

.dropbtn3:hover, .dropbtn3:focus {
    background-color: #3e8e41;
}

.dropdown3 {
   /* position: relative;*/
    display: inline-block;
}

.dropdown-content3 {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
   box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.2);
  /*z-index: 1;*/
}

.dropdown-content3 a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown3 a:hover {background-color: #f1f1f1}

.show3 {display:block;}



</style>
</head>
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction2() {
    document.getElementById("myDropdown1").classList.toggle("show1");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn1')) {

    var dropdowns = document.getElementsByClassName("dropdown-content1");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show1')) {
        openDropdown.classList.remove('show1');
      }
    }
  }
}


 /* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction3() {
    document.getElementById("myDropdown2").classList.toggle("show2");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn2')) {

    var dropdowns = document.getElementsByClassName("dropdown-content2");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show2')) {
        openDropdown.classList.remove('show2');
      }
    }
  }
}
 
 
 

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction4() {
   document.getElementById("myDropdown3").classList.toggle("show3");
}

//Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
 if (!event.target.matches('.dropbtn3')) {

   var dropdowns = document.getElementsByClassName("dropdown-content3");
   var i;
   for (i = 0; i < dropdowns.length; i++) {
     var openDropdown = dropdowns[i];
     if (openDropdown.classList.contains('show3')) {
       openDropdown.classList.remove('show3');
     }
   }
 }
}
 
</script>
<body>
<header >
<div>
<img src="images/lawyer.jpg" style="float: left;  width: 110px;  height:90px;" alt="logo"/>
<h1 style="color:    white ;nargin-top:30px;">Lawyers Diary</h1>
</div>
 <a href="index.jsp"><input style="font-size: 20px; width: 100px; border: 2px solid; background-color: black; color: white;float:right;margin-top:-30px;"type="button" id="HOME" name="logout" value="logout"></a> 
			
<div style="letter-spacing: 20px;margin-left:160px;">
		 <a href="home.jsp"><input style="font-size: 20px; border-radius: 25px; width: 100px; border: 2px solid; background-color: black; color: white;"type="button" id="HOME" name="HOME" value="HOME"></a> 
			
	<div class="dropdown">
<button onclick="myFunction()" class="dropbtn">clients</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="myclients.jsp">Add clients</a>
    <a href="viewclients.jsp">View clients</a>
    
    
  </div>
</div>
	
			
				<div class="dropdown1">
<button onclick="myFunction2()" class="dropbtn1">Cases</button>
  <div id="myDropdown1" class="dropdown-content1">
    <a href="addcases.jsp">Add cases</a>
    <a href="viewcases.jsp">View </a>
    
  </div>
</div>
			
		
		<!-- 	<a href="addcases.jsp"><input style="font-size: 20px;border-radius: 25px; width: 150px; border: 2px solid; background-color: black; color: white;" type="button"
			id="PIZZA" name="CASES" value="ADD CASES"></a>
			 -->
			
			
			
	
			
				<div class="dropdown3">
<button onclick="myFunction4()" class="dropbtn3">Hearings</button>
  <div id="myDropdown3" class="dropdown-content3">
    <a href="searchcasenoadd.jsp">Add Hearings</a>
    <a href="viewhearing.jsp">View </a>  
  </div>
</div>
	
			
					<a href="appointments.jsp"><input style="font-size: 20px;border-radius: 25px; width: 140px; border: 2px solid; background-color: black; color: white;" type="button"
			id="CONTACT US" name="courts" value="Appointments"></a> 
			
			<a href="closedcases.jsp"><input style="font-size: 20px;border-radius: 25px; width: 140px; border: 2px solid; background-color: black; color: white;" type="button"
			id="Close Case" name="CONTACT US" value="Close Case"></a> 
			
						
			<div class="dropdown2">
<button onclick="myFunction3()" class="dropbtn2" style="width:140px;">Associates</button>
  <div id="myDropdown2" class="dropdown-content2">
    <a href="addassociates.jsp">Add Associates</a>
     <a href="viewassociates.jsp">View </a>   
    <a href="deleteassociate.jsp">Delete </a>   
    
  </div>
</div> 
	
	</div>
</header>
</body>
</html>