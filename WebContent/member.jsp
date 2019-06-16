<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/member.css">
	<link rel=stylesheet type="text/css" href="css/fire.css">
    <title>member</title>
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

    <text x="72%" y="150" class="t--water" text-anchor="middle">團隊介紹</text>
    </svg>

    <div style="text-align:center;clear:both">
	<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
	<script src="/follow.js" type="text/javascript"></script>
	</div>
	
	<div id="portfolio">
		<div class="column1">
			<div class="box2">
				<div>
				<div class="image-hover img-round-square" style="background:url(image/me.png) no-repeat -3em -5em ;background-size: 140%;"></div>
			    </div>
				<p>
				姓名：周柏辰<br>
				班級：資管二乙<br>
				學號：10644227<br>
				電話：0960-534-815<br>
				e-mail：qazwsx494567@gmail.com
		       </p>
			</div>
		</div>
		<div class="column1">
			<div class="box2">
				<div>
				<div class="image-hover img-round-square" style="background:url(image/75.jpg) no-repeat 0em -1em ;background-size: 120%;"></div>
			    </div>
				<p>
				姓名：梁秋蓮<br>
				班級：資管二乙<br>
				學號：10644275<br>
				電話：0989-629-382<br>
				e-mail：stephanie_ql97@hotmail.com
		       </p>
			</div>
		</div>
		<div class="column1">
			<div class="box2">
				<div>
				<div class="image-hover img-round-square" style="background:url(image/33.jpg) no-repeat 0em -4em ;background-size: 100%;"></div>				
			    </div>
				<p>
				姓名：羅竟元<br>
				班級：資管二甲<br>
				學號：10644133<br>
				電話：0925-350-290<br>
				e-mail：10644133@cycu.edu.tw
		       </p>
			</div>
		</div>
		<div class="column2">
			<div class="box3">
				<div>
				<div class="image-hover img-rotate-right"><img src="image/39.jpg" style="position:absolute; top:-11em; left:-12em; height:500px;"></div>
			    </div>
				<p>
				姓名：古東晨<br>
				班級：資管二乙<br>
				學號：10644239<br>
				電話：0978-348-102<br>
				e-mail：supra350@gmail.com
		       </p>
			</div>
		</div>
		<div class="column2">
			<div class="box3">
				<div>
				<div class="image-hover img-rotate-left"><img src="image/30.jpg" style="position:absolute; top:-1em; left:0em; height:280px;"></div>
			    </div>
				<p>
				姓名：吳俊毅<br>
				班級：資管二甲<br>
				學號：10644130<br>
				電話：0986-561-781<br>
				e-mail：10644130@cycu.edu.tw
		       </p>
			</div>
		</div>
    </div>
          
</div>
				
<jsp:include page="/footer.jsp" />
</body>
</html>