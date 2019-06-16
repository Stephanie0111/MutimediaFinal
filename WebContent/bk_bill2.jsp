<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html >
<head>
	 <meta charset="utf-8"/>
	<title>後台管理</title>
	<style type="text/css" media="screen">
td
 {
 	text-align:center;
 }
a
 {
  text-decoration:none;
 }
.in td
{
	width: 10rem;
	height: 5rem;
}	
.out td
 {
	width: 10rem;
	height: 5rem;
 }

  button
 {
   height: 1.5rem;

 }
 .under td
 {
	width: 10rem;
	height: 2rem;
 }
</style>
</head>
<body>
<c:if test="${sessionScope.memlevel!=0}">
     <script language="javascript">           
			alert("非法訪問!");           
			top.location="index";    
	 </script>
</c:if>
<form action="bk_good_chang?method=add_good" method="post">
			<table border="1" class="in">
				<tr>
					<td><center >管理者介面</center></td>
					<td colspan="2"><center><a href="bk_good">商品管理</a></center></td>
					<td colspan="2"><center><a href="bk_good?page=2">庫存管理</a></center></td>
					<td colspan="2"><center><a href="bk_product_add.jsp">新增產品</a></center></td>
					<td colspan="2"><center><a href="bk_good_bill">完成結帳商品</a></center></td>


				</tr>
				<tr>
					<td>客戶帳號</td>
					<td>商品圖片</td>
					<td>商品編號</td>
					<td>商品名稱</td>
					<td>商品價格</td>
					<td colspan="4">購買數量</td>

				</tr>
				<c:forEach var="c" items="${requestScope.order}">
				<tr>
					<td>${c.buy_acc}</td>
					<td>${c.pic}</td>
					<td>${c.id }</td>
					<td>${c.name }</td>
					<td>${c.price }</td>
					<td colspan="4">${c.count }</td>

				</tr>	
				</c:forEach>
			</table>

	</form>



</body>
</html>