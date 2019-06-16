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

			<table border="1" class="in">
				<tr>
					<td><center>管理者介面</center></td>
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
					<td>商品更改</td>
                    <td>商品動作</td>
				</tr>
				<c:forEach var="c" items="${requestScope.list}">
				<tr>
					<td>${c.pic}</td>
					<td>${c.id}</td>
					<td>${c.name}</td>
					<td>${c.from}</td>
					<td>原價:${c.o_price}<br>折扣後:${c.price}<br>  <form action="bk_good_add?method=sale" method="post"><input type="number" name="b_sale" min="0" max="1" step="0.01"  ><button align="center" class="billbutton" name="but" value="${c.id}" type="submit" >折扣</button></form></td>
					<td>${c.years}</td>
					<td>${c.store}</td>
					<c:if test="${c.state eq '1' }">			 
						<td align="center"><form action="bk_good_add?method=down" method="post"><button align="center" class="billbutton" name="but" value="${c.id}" type="submit" >下架</button></form></td>			
					</c:if>
					<c:if test="${c.state ne '1' }">		
						<td align="center"><form action="bk_good_add?method=up" method="post"><button align="center" class="billbutton" name="but" value="${c.id}" type="submit" >上架</button></form></td>
					</c:if>	
                  	 	<td align="center"><form action="bk_good_chang?method=dele" method="post"><button align="center" class="billbutton" name="but" value="${c.id}" type="submit" >刪除</button></form></td>						
					</tr>
				</c:forEach>
				
			</table>
		</td>
	</tr>


</table>


</body>
</html>