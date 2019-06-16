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
					<td>商品圖片</td>
					<td>商品編號</td>
					<td>商品名稱</td>
					<td>商品產地</td>
					<td>商品價格</td>
					<td>商品年份</td>
					<td>商品庫存</td>
					<td>是否上架</td>
                    <td>增加產品</td>
				</tr>
				<tr>
					<td><input type="text" name="good_pic" value="" size="10" ></td>
					<td><input type="text" name="good_num" value=""size="10" ></td>
					<td><input type="text" name="good_name" value=""size="10" ></td>
					<td><input type="text" name="good_from" value=""size="10" ></td>
					<td><input type="text" name="good_price" value=""size="10" ></td>
					<td><input type="text" name="good_year" value=""size="10" ></td>
			        <td ><input type="number" name="good_store"  min="0" max="100" value=""size="10" ></td>
			        <td><input type="radio" name="good_state"  value="1">上架
					<input type="radio" name="good_state"  value="0" >下架</td>		
                  	<td ><button class="billbutton" name="but" value="" type="submit"size="10" >確定新增</button></td>						
				</tr>	
			</table>

	</form>



</body>
</html>