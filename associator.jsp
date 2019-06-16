<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/admin.css">
	<link rel="stylesheet" href="css/fire.css" media="screen" type="text/css" />
    <title>admin</title>
</head>
<body>
<c:if test="${sessionScope.memlevel==null}">
     <script language="javascript">           
			alert("請先登入!");           
			top.location="index.jsp";    
	 </script>
</c:if>
<jsp:include page="/header.jsp" /></script>
<div class="bod">
	<svg style="margin-bottom:50px;">
    <pattern id="pt--water" viewBox="30 100 186 250"
         width="106" height="230" patternUnits="userSpaceOnUse"
             x="-130" y="-210">
      <image xlink:href="water.gif" width="280" height="300"/>
    </pattern>

    <text x="72%" y="150" class="t--water" text-anchor="middle">會員資料</text>
    </svg>
<c:forEach var="c" items="${sessionScope.memlist}">
	<div class="admin">
		<span class="context">個人資料</span>
		<form action="login" method="post">
		<table class="admintable">
			<tr>
				<td class="tdtd1" style="width:50%;" height="50">姓 名 :</td>	<td class="tdtd2"><input type='text' name="name" value='${c.name}' maxlength="5" minlength="2" style="text-align:center;border-radius:4px;"></td>	
			</tr>
			<tr>
				<td class="tdtd1" height="50">信 箱 :</td><td class="tdtd2"><input type='email' name="email" value='${c.mail}' maxlength="30" minlength="6" style="text-align:center;border-radius:4px;"></td>
			</tr>
			<tr>
				<td class="tdtd1" height="50">帳 號 :</td>	<td class="tdtd2"><input type='account' name="account" value='${c.account}' maxlength="30" minlength="3" style="text-align:center;border-radius:4px;"></td>
			</tr>
			<tr>
				<td class="tdtd1" height="50">密 碼 :</td><td class="tdtd2"><input type='password' name="password" value='${c.password}' maxlength="20" minlength="6" style="text-align:center;border-radius:4px;"></td>
			</tr>
			<tr>
				<td class="tdtd3" height="50" colspan="2" height="35" style="border:1px  solid #DDDDDD;"><button class="adminbu" name="method" value="login_change" ><b>修改資料</b></button></td>
			</tr>
		</table>
	</div>
</c:forEach>
	<div class="space">
	</div>
	
	<div class="admin">
		<span class="context">我的訂單</span>
		<table border="2" class="admintable">
			<tr height="50" style="background-color:rgba(56,230,188,0.5);">
				<td></td>
				<td>商品名稱</td>
				<td>價格</td>		
				<td>數量</td>
				<td>小計</td>
			</tr>
			<c:forEach var="c" items="${requestScope.order}">
			<tr height="90" style="background-color:rgba(169,244,226,0.5);">
				<td><img src="wineimage/glg01.JPG" width="120"></td>
				<td class="admintxt">${c.name }</td>
				<td class="admintxt">${c.price }</td>		
				<td class="admintxt">${c.count }</td>
				<td class="admintxt">${c.price * c.count }</td>
			</tr>
		</c:forEach>
		</table>
	</div>

	<div style="text-align:center;">
	<a href="index.jsp" class="adbt">返回首頁</a>
	</div>
	
	<div class="space">
	</div>
	
</div>	
<jsp:include page="/footer.jsp" />
</body>
</html>