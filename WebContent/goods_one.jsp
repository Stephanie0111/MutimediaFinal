<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
	<link rel=stylesheet type="text/css" href="css/goods_one.css">
	<link rel="stylesheet" type="text/css" href="css/star.css">
	<link rel="stylesheet" href="css/fire.css" media="screen" type="text/css" />
    <title>goods_one</title>

</head>
<body>
<c:set var="count" value="${requestScope.list_sell}"/>
<c:set var="score" value="${requestScope.score}"/>

	<c:forEach var="c" items="${requestScope.list_good}">
	
<script type="text/javascript" src="sidebar.js"></script>
<jsp:include page="/header.jsp" />
<div class="bod">
	<svg>
    <pattern id="pt--water" viewBox="30 100 186 250"
         width="106" height="230" patternUnits="userSpaceOnUse"
             x="-130" y="-210">
      <image xlink:href="water.gif" width="280" height="300"/>
    </pattern>

    <text x="72%" y="150" class="t--water" text-anchor="middle">${c.name}</text>
    </svg>

	<div class="div0">
			
			<div class="div01">
				<img src="${c.bg_pic }" height="500">
			</div>
			<div class="div02">		
				
				<div class="title">商品詳情</div>
				<p class="gp">				
					商品編號：${c.id}<br>
					品名：${c.name}<br>
					<span class="txt">價格：${c.price}</span><br>
					年份：${c.years}<br>
					原產地：${c.from}<br>		
				</p>
				<form action='/final/order' method="post">
			    <div>
				
				購買數量：<span class="amount"><input type="number" name="amount" value="1" min="1" max="99" ></span> &nbsp; 庫存：${c.store}瓶
					<input type="hidden" name="id" value=${c.id}>
					<input type="hidden" name="state" value="order">
					
					<br>
					<span class="sell">已售出 :<c:out value="${count}"/>瓶</span>
					
				</div>
				
				<c:if test="${sessionScope.memName ne null}">
			    <input type="submit" name="but" value="加入購物車" class="button">
				<input type="submit" name="but" value="直接購買" class="button" >
				</c:if>
				<c:if test="${sessionScope.memName eq null}">
					<p style="font-size:20px;">先登入後下單</p>
				 </c:if>
				</form>
				
					<div class="divstar">
					總評分 : <span class="startxt"><c:out value="${score}"/>分</span>
				</div>
				
			</div>
			
	</div>	
	<form action="message_board" method="post" class="dark-matter">
	<h1>Q&A
	</h1>
	<label>
	<span>標題 :</span>
	<input id="name" type="text" name="title" placeholder="Your title" />
	<input type="hidden" name="name" value="${sessionScope.memName}" />
	<input type="hidden" name="good_id" value="${c.id}"  />
	</label>
	<label>
	<span>評分 :</span>
	<section>	
			<fieldset class="starability-checkmark"> 
			<input type="radio" id="rate5-6" name="rating" value="5" />
			<label for="rate5-6" title="Amazing"></label>

			<input type="radio" id="rate4-6" name="rating" value="4" />
		    <label for="rate4-6" title="Very good"></label>

			<input type="radio" id="rate3-6" name="rating" value="3" />
			<label for="rate3-6" title="Average"></label>
		    <input type="radio" id="rate2-6" name="rating" value="2" />
			<label for="rate2-6" title="Not good"></label>
			<input type="radio" id="rate1-6" name="rating" value="1" />
			<label for="rate1-6" title="Terrible"></label>
			</fieldset>	
	</section>
	</label>
	
	

	<label>
	<span>留言 :</span>
	<textarea id="message" name="message" placeholder="Your Message To Us"></textarea>
	</label>
	<label>
	<span>&nbsp;</span>
	<c:if test="${sessionScope.memName ne null}">
		<input type="submit" class="button" value="送出" />
	 </c:if>
	 	<c:if test="${sessionScope.memName eq null}">
		<p style="font-size:20px;">請先登入</p>
	 </c:if>
	 

	</label>
	</form>
	</c:forEach>
	
		<div class="board">
			<div class="message">
			<c:forEach var="c" items="${requestScope.list_message}">
				<div class="msg">
				姓名:${c.name} 標題:${c.title} 評分:${c.score} 時間:${c.date}<br>${c.message}
				</div>
				<hr>
			</c:forEach>
			</div>
		</div>
		<div class="space">
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

<jsp:include page="/footer.jsp" />

</body>
</html>