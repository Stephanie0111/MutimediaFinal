<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/index.css">
	<link rel="stylesheet" href="css/fire.css" media="screen" type="text/css" />
	<link rel="stylesheet" href="css/slide.css">
    <title>index</title>
</head>
<body>
<jsp:include page="header.jsp" />

<div class="bod">

		<div class="marqee">
			<ul>
				<li>歡迎光臨小酒窩 !</li>
				<li>您要的酒都在這裡</li>
				<li>約翰走路藍牌特價95折~</li>
				<li>格蘭傑12年特價95折~</li>
				<li>格蘭菲迪15年特價95折~</li>
			</ul>
		</div>
		
<div class="space">
</div>

	<div class="o-sliderContainer hasShadow" id="dowebokWrap1">
		<div class="o-slider" id="dowebok1">
			<div class="o-slider--item" data-image="css/image/ad01.png"></div>
			<div class="o-slider--item" data-image="css/image/ad02.png"></div>
			<div class="o-slider--item" data-image="css/image/ad03.png"></div>
			<div class="o-slider--item" data-image="wineimage/bv001.png"></div>
			<div class="o-slider--item" data-image="wineimage/bv002.png"></div>
			<div class="o-slider--item" data-image="wineimage/bv003.png"></div>
		</div>
	</div>

<script src="js/jquery.min.js"></script>
<script src="js/hammer.min.js"></script>
<script src="js/slider.js"></script>
<script>
$(function() {
	$('#dowebok1').pbTouchSlider({
		slider_Wrap: '#dowebokWrap1',
		slider_Drag: false
	});
});
</script>

	<svg>
    <pattern id="pt--fire" viewBox="30 100 186 250"
         width="106" height="230" patternUnits="userSpaceOnUse"
             x="-130" y="-210">
      <image xlink:href="fire.gif" width="280" height="300"/>
    </pattern>

    <text x="72%" y="150" class="t--fire" text-anchor="middle">熱門商品</text>
    </svg>
  
	<div id="portfolio" class="container">	
	<c:forEach var="c" items="${requestScope.list}">
		<div class="column1">
			<div class="box2">
				<div>
				<img src="${c.pic}" onmouseover="this.src='${c.b_pic}';" onmouseout="this.src='${c.pic}';">
			    </div>
				<p>
				商品編號：${c.id}<br>
				品名：${c.name}<br>
				價格：${c.price}<br>
				年份：${c.years}<br>
				原產地：${c.from}
		       </p>
		        <div>
			   <a href="/final/goods_one?search=${c.name}" class="button">詳細資訊</a>
			   <c:if test="${sessionScope.memName ne null}">
			     <a href="order?but=加入購物車&id=${c.id}&state=order" class="button">加入購物車</a>
			    </c:if>
			   </div>
			</div>
			
		</div>
		 
			
	</c:forEach>
		
	</div>
	
			<div class="inter">小酒窩簡介</div>
			<p class="ppp">
			本店主要銷售出產於英國以及法國品牌的酒~<br>
			已營業了超過20年，經驗豐富，品質有保證，<br>
			若經證實為假酒，本店一律以3倍價進行退款 !<br>
			百富、麥卡倫、蘇格登、格蘭傑、格蘭利威、格蘭菲迪、<br>
			Johnnie Walker、Hennessy各年份，都可以在這裡找到哦 !
			</p>
		
		<div class="row">
            <div class="column">
                <img class="brands" src="image1/01.png">
            </div>
            <div class="column">
                <img class="brands" src="image1/02.png">
            </div>
            <div class="column">
                <img class="brands2" src="image1/03.png">
            </div>
            <div class="column">
                <img class="brands" src="image1/04.jpg">
            </div>
            <div class="column">
                <img class="brands" src="image1/05.png">
            </div>
            <div class="column">
                <img class="brands" src="image1/06.jpg">
            </div>
			<div class="column">
                <img class="brands" src="image1/07.jpg">
            </div>
            <div class="column">
                <img class="brands" src="image1/08.png">
            </div>
        </div>
</div>

<script type="text/javascript" src="backtotop.js"></script>
<jsp:include page="footer.jsp" />

</body>
</html>