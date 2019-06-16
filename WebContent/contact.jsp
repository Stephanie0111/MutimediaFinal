<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/contact.css">
	<link rel="stylesheet" href="css/fire.css" media="screen" type="text/css" />
    <title>contact</title>
</head>
<body>
<jsp:include page="/header.jsp" />
<div class="bod">
	<svg>
    <pattern id="pt--water" viewBox="30 100 186 250"
         width="106" height="230" patternUnits="userSpaceOnUse"
             x="-130" y="-210">
      <image xlink:href="water.gif" width="280" height="300"/>
    </pattern>

    <text x="72%" y="150" class="t--water" text-anchor="middle">關於我們</text>
    </svg>
		
		<div class="buyway">
		<span class="context">購買方式</span><br><br><img src="css/image/process2.png" width="800">
		</div>
	
	
	<div id="portfolio">
	<div class="text2"><span class="context">聯繫我們</span></div>
		<div class="contact1">
			<div class="column1">
				<p>
				e-mail：<br>qazwsx494567@gmail.com
				</p>
			</div>
			<div class="column1">
				<p>
				地址：<br>桃園市平鎮區延平路二段302號
				</p>
			</div>
			<div class="column1">
				<p>
				電話：<br>03 - 4926000
				</p>
			</div>
		</div>

	</div>
	
	<div class="text2"><span class="context">店家地址</span></div>
	<div style="text-align:center; padding-bottom:150px;"><iframe width='60%' height='400' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com.tw/maps?f=q&hl=zh-TW&geocode=&q=桃園市平鎮區延平路二段302號&z=16&output=embed&t='></iframe></div>
	
</div>
<script type="text/javascript" src="backtotop.js"></script>
<jsp:include page="/footer.jsp" />
</body>
</html>