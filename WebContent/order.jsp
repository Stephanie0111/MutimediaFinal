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
	
	<table class="billtable">
		<thead>
			<tr style="background: #AAA;">
				<th> </th>
				<th>商品名稱</th>
				<th>價格</th>
				<th>數量</th>
				<th>小計</th>
			</tr>
		</thead>
		<tbody>
		<c:set value="0" var="sum_p" />
		<c:forEach var="c" items="${sessionScope.mem_order}" >
			<tr>
				<td><img src='${c.pic}'></td>
				<td>${c.name}</td>
				<td>${c.price}</td>
				<td>${c.count}</td>
				<td>${c.price*c.count}</td>
				<c:set value="${sum_p+c.count * c.price}" var="sum_p" /> 
			</tr>
		</c:forEach>
			
		</tbody>
		<thead>
			<tr style="background-color:#d8d4d4;">
				<td colspan="2"></td>
				<td colspan="3">
					<form>
					<b>選擇購買方式 : &nbsp;</b>
					<select>
						<option value="7-11">7-11取貨</option>>
						<option value="ok">ok超商取貨</option>>
						<option value="family">全家取貨</option>>
						<option value="lef">萊爾富取貨</option>>
					</select>
					<span style="color:red;"> *必填</span>
					</form>
				</td>
			</tr>
			<tr style="background: #AAA;">
				<th><button class='billbutton' onclick="location.href='re_order.jsp'" >修改您的訂單</button></th>
				<th></th>
				<th></th>
				<th>共計 :</th>
				<th><span style="color:blue; font-size:20px;">${sum_p}</span> 元</th>
			</tr>
		</thead>
	</table>
	
		
	</div>
	
	</div>	
		<div style="text-align:center;">
		<a href="order?but=結帳" class="button">完成結帳</a>
		<a href="index.jsp" class="button">返回首頁</a>
		</div>
	</div>
	
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>