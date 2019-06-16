<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/bill.css">
    <title>bill</title>
</head>
<body>
<c:if test="${sessionScope.memlist==null}">
     <script language="javascript">           
			alert("非法訪問!");           
			top.location="index";    
	 </script>
</c:if>
<jsp:include page="/header.jsp" />
<div class="bod">
	<div class="bill">
	<div class="title1">您的訂單</div>
	
	<div class="board">
	<div class="area">
	<form action="order" method="post" accept-charset="utf-8">	
	<table class="billtable">
	
		<thead>
			<tr style="background: #AAA;">
				<th> </th>
				<th>商品名稱</th>
				<th>價格</th>
				<th>數量</th>
				<th>動作</th>

			</tr>
		</thead>
		
		
		<tbody>
		<c:forEach var="c" items="${sessionScope.mem_order}" >
			<tr>
			<c:set value="0" var="sum_p" />
				<td><img src='${c.pic}'></td>
				<td>${c.name}</td>
				<td>${c.price}</td>
				<td><input type="number" name="amount" min="0" max="99" value="${c.count}" >
					<input type="hidden" name="id" value=${c.id}></td>
				<th><button class="billbutton" name="but" value="${c.id}" type="submit" >刪除</button></th>
			</tr>
		</c:forEach>
		</tbody>
		
		<thead>
			<tr style="background: #AAA;">
				<th></th>
				<th></th>
				<th><button class='billbutton' name="but" value="修改" type="submit">確定修改訂單</button></th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		</form>	
	</table>
		
	</div>
	
	</div>	
		<div style="text-align:center;">
		<a href="" class="button">返回訂單</a>
		<a href="#" class="button">返回首頁</a>
		</div>
	</div>
	
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>