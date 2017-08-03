<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="searchappointment.jsp" method="post">
<div style="height:200px;width:200px;margin-top:100px;margin-left:600px;">
  <input placeholder=" Enter the date " style="margin-top:40px;" type="date" name="date"  required>
 <button type='submit' style="margin-top:40px;margin-left:20px;background-color:#2a313d;height:40px;color:white;width:100px;">Search Case </button>
 </div>
</form>
</body>
</html>