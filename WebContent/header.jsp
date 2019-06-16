<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'/>
	<link rel=stylesheet type='text/css' href='css/header.css'>
	<link rel=stylesheet type='text/css' href='css/shopping.css'>
	<link rel='stylesheet' href='css/login.css'>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>
	
  <script src='http://code.jquery.com/jquery-1.10.2.js'></script>
  <script>
  $(function() {
    $( '.content,#header ul li:nth-child(1),#header ul li:nth-child(2),#header ul li:nth-child(3),#header ul li:nth-child(4),#header ul li:nth-child(5),#header ul li:nth-child(6)' ).hide();
    $( '.content,#header ul li:nth-child(1)' ).fadeIn(2000);
	$( '.content,#header ul li:nth-child(2)' ).fadeIn(3000);
	$( '.content,#header ul li:nth-child(3)' ).fadeIn(4000);
	$( '.content,#header ul li:nth-child(4)' ).fadeIn(5000);
	$( '.content,#header ul li:nth-child(5)' ).fadeIn(6000);
	$( '.content,#header ul li:nth-child(6)' ).fadeIn(7000);
  });
  </script>

  <script type='text/javascript'>
	function hi(){
	   var linkbt=document.getElementById('linkbt');
	   var light=document.getElementById('light');
	   var fade=document.getElementById('fade');
	   var closebt=document.getElementById('closebt');
	   linkbt.onclick=function(){
		 light.style.display='block';
		 fade.style.display='block';
	   }
	   closebt.onclick=function(){
		 light.style.display='none';
		 fade.style.display='none';
	   }
	}
	 window.addEventListener('load', hi);
	</script>

</head>


<!-- 導覽列上方有固定高度的大圖 -->

<header>
  <img src='image/header2.png' style='width:100%;' class='content'>
</header>
<nav id='main'>

<ul class='menu' id='menu'>
<li><img src='css/image/logobo.png' class='logob'></li>
	<li class='menu-item'><a href='index' accesskey='1' title=''>首頁</a></li>
  <li class='menu-item'>
    <a href='goods' accesskey='2' title=''>商品總覽</a>

  </li>
	<li class='menu-item'><a href='contact.jsp' accesskey='3' title=''>聯繫我們</a></li>
	<li class='menu-item'><a href='member.jsp' accesskey='4' title=''>團隊介紹</a></li>
	<c:if test="${sessionScope.memlevel eq '0'}">
	<li class='menu-item'><a target="_blank" href='bk_good' accesskey='5' title=''>後台管理</a></li>
	</c:if>
	<c:if test="${sessionScope.memlevel ne '0'}">
	<li class='menu-item'><a href='associator' accesskey='5' title=''>會員專區</a></li>
	</c:if>
	
	<div class='pic'>
 	<c:if test="${sessionScope.memlevel eq '0'}">
       <div class="hello" style="color:white;margin-top:20px;">管理員&nbsp${sessionScope.memlist.get(0).getName()}您好!
       <form action='/final/login?method=login_out' method="post">
			<input type="submit" value="登出" class="loginbu">
		</form>
		</div>
     </c:if>
	<c:if test="${sessionScope.memlevel eq '1'}">
       <div class="hello" style="color:white;margin-top:20px;">會員&nbsp${sessionScope.memlist.get(0).getName()}您好!
       <form action='/final/login?method=login_out' method="post">
			<input type="submit" value="登出" class="loginbu">
		</form>
		</div>
     </c:if>
     <c:if test="${sessionScope.memlevel ne '1' and sessionScope.memlevel ne '0'}">
       <a href='javascript:void(0)' id='linkbt'><img src='image/peoplehead.png' class='loadpeople'></a>
	</c:if>
     
	</div>

	<div class='pic'><span class='openbtn' <c:if test="${sessionScope.memlist==null}">onclick='error()'</c:if> <c:if test="${sessionScope.memlist!=null}">onclick='openNav()'</c:if>><img src='image/shoc.png' class='shopping_cart'></span></div>
</ul>

  
</nav>


<script>
// 取得導覽列元素
const nav = document.querySelector('#main');
// 取得導覽列元素頂端位置
const topOfNav = nav.offsetTop;

function fixNav() {
  // 如果觀景窗頂部位置值大於導覽列頂部就沾黏，反之取消沾黏
  if(window.scrollY >= topOfNav) {
    document.body.style.paddingTop = nav.offsetHeight + 'px';
    document.body.classList.add('fixed-nav');
  } else {
    document.body.style.paddingTop = 0;
    document.body.classList.remove('fixed-nav');
  }
}

// 監聽滾動事件
window.addEventListener('scroll', fixNav);
</script>

<div id='light'>
	<a href='javascript:void(0)' id='closebt' class='color'>×</a>
	<div class='dowebok' id='dowebok'>
        <div class='form-container sign-up-container'>
            <form action='/final/login_add' method="post">
                <h1>註冊</h1>
                <input type='text' name="name" placeholder='姓名' maxlength="10" minlength="2">
                <input type='account' name="account" placeholder='帳號' maxlength="30" minlength="3">
				<input type='email' name="mail" placeholder='信箱' id='telNo' maxlength="30" minlength="6">
                <input type='password' name="password" placeholder='密碼' maxlength="20" minlength="6">
                <input type='password2' name="password2" placeholder='確認密碼' maxlength="20" minlength="6">
				 <input type='hidden' name="level" value="1">
                <button>註冊</button>
            </form>
        </div>
        <div class='form-container sign-in-container'>
            <form action='/final/login?method=login_in' method="post">
                <h1>登入</h1>
                <span>或使用您的信箱</span>
                <input type='account' name='account' placeholder='帳號'>
                <input type='password' name='password' placeholder='密碼'>
				<br>
				<span>快速登入</span>
                <div class='social-container'>	
                    <a href='#' class='social'><i class='fab fa-facebook-f'></i></a>
                    <a href='#' class='social'><i class='fab fa-google-plus-g'></i></a>
                    
                </div>
                <button>登入</button>
            </form>
        </div>
        <div class='overlay-container'>
            <div class='overlay'>
                <div class='overlay-panel overlay-left'>
                    <h1>已有帳號？</h1>
                    <p>請使用您的帳號進行登入</p>
                    <button class='ghost' id='signIn'>登入</button>
                </div>
                <div class='overlay-panel overlay-right'>
                    <h1>沒有帳號？</h1>
                    <p>立即註冊加入我們吧 !</p>
                    <button class='ghost' id='signUp'>註冊</button>
                </div>
            </div>
        </div>
    </div>
	
	<script src='js/login.js'></script>
</div>
<div id='fade'></div>

<div id='mySidepanel' class='sidepanel'>
  <div><img src='image/sh.png' class='carimg'></div>
  <div class='shoppingtitle'>購物車</div>
  <a href='javascript:void(0)' class='closebtn' onclick='closeNav()'>×</a>
	<div class='list'>
	<c:set value="0" var="sum" />

	<table>
		<tr>
			<td>

			</td>
			<td width='100'>
			商品名稱
			</td>
			<td>
			價格
			</td>
			<td width='35'>
			數量
			</td>
			<td>
			 小計
			</td>
		</tr>
	<c:forEach var="c" items="${sessionScope.mem_order}" >
		<tr>
			<td>
			<img src='${c.pic}'>
			</td>
			<td width='100'>
			${c.name}
			</td>
			<td>
			${c.price}
			</td>
			<td width='35'>
			${c.count}
			</td>
			<td colspan='1' width='85'>
			${c.count * c.price}
			</td>
		</tr>
		<c:set value="${sum+c.count * c.price}" var="sum" /> 
		
		 
	</c:forEach>
	



	</table>
		<div class='total'>
		<hr>
		共計 : ${sum}元<button class='button_shop' onclick="location.href='order.jsp'">查看訂單</button>
		</div>
	</div>

</div>


<script>
function openNav() {
  document.getElementById('mySidepanel').style.width = '350px';
}

function closeNav() {
  document.getElementById('mySidepanel').style.width = '0';
}
function error() {
	  alert("請先登入");
	}
</script>

</html>