<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/goods.css">
	<link rel="stylesheet" href="css/fire.css" media="screen" type="text/css" />
    <title>goods</title>

</head>
<body>
<script type="text/javascript" src="sidebar.js"></script>
<script type="text/javascript" src="header.js"></script>
<div class="bod">

	<svg>
    <pattern id="pt--water" viewBox="30 100 186 250"
         width="106" height="230" patternUnits="userSpaceOnUse"
             x="-130" y="-210">
      <image xlink:href="water.gif" width="280" height="300"/>
    </pattern>

    <text x="72%" y="150" class="t--water" text-anchor="middle">商品總覽</text>
    </svg>
    <form class="searchform">
	<input class="searchfield" type="text" value="Search..." onfocus="if (this.value == 'Search...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Search...';}">
	<font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><input class="searchbutton" type="button" value="Go"></font></font>
	</form>
	
	<div id="portfolio" class="container">	
		<c:forEach var="c" items="${requestScope.list}">
		
		
		<div class="column1">
			<div class="box2">
				<div>
				<img src="wineimage/bv01.JPG" onmouseover="this.src='image/pic01.jpg';" onmouseout="this.src='wineimage/bv01.JPG';">
			    </div>
				<p>
				商品編號：${c.id}<br>
				品名：${c.name}<br>
				價格：${c.price}<br>
				年份：${c.years}<br>
				原產地：${c.from}
		       </p>
			   <div>
			   <a href="#" class="button">詳細資訊</a>
			   <a href="#" class="button">加入購物車</a>
			   </div>
			</div>
		</div>
		</c:forEach>
		
		
		
	
	</div>

</div>
	
	<div style="float:left;">

	</div>
	
	<button class="js-back-to-top back-to-top" title="回到頂端">&#65085;</button>
	<script src="https://cdn.staticfile.org/jquery/2.2.4/jquery.min.js"></script>
	<script>
	$(function () {
	var $win = $(window);
	var $backToTop = $('.js-back-to-top');
	$win.scroll(function () {
	if ($win.scrollTop() > 100) {
	$backToTop.show();
	} else {
	$backToTop.hide();
	}
	});
	$backToTop.click(function () {
	$('html, body').animate({scrollTop: 0}, 200);
	});
	});
	</script>


<script type="text/javascript" src="footer.js"></script>
</body>
</html>