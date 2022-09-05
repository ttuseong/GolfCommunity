<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/header/header.css">
<header class="row">
	<div class="logo col-2">
		로고 이미지
	</div>
		
	<div class="service col-2">
		<ul>
			<li><a href="">#SNS</a></li>
			<li><a href="">#GOLF COURSE</a></li>
		</ul>
	</div>
	
	<div class="account col-2">
		<ul>
			<li><a href="javascript:void(0)" onclick="openLoginModal();">로그인</a></li>
		</ul>
	</div>
</header>


<jsp:include page="/WEB-INF/views/includes/loginModal.jsp"></jsp:include>