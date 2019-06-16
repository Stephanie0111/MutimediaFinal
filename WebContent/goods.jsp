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
<jsp:include page="/header.jsp" />
<div class="bod">

	<svg>
    <pattern id="pt--water" viewBox="30 100 186 250"
         width="106" height="230" patternUnits="userSpaceOnUse"
             x="-130" y="-210">
      <image xlink:href="water.gif" width="280" height="300"/>
    </pattern>

    <text x="72%" y="150" class="t--water" text-anchor="middle">商品總覽</text>
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
				價格：${c.o_price} <c:if test="${c.price ne c.o_price}"><span style="color:red;">特價:${c.price}</span></c:if><br>
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


<script type="text/javascript" src="backtotop.js"></script>
<jsp:include page="/footer.jsp" />
</body>
</html>