<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'/>
	<link rel=stylesheet type='text/css' href='css/footer.css'>
    <title>footer</title>
</head>
<hr>
<div id='copyright'>

    <img src='image/drive.jpg'>
	<p>Copyright&copy; 2019 小酒窩  &nbsp; 訪客總計:<c:out value="${sessionScope.count}"/>人

</div>

</html>