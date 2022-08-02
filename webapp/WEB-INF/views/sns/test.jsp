<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/common/reset/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/common/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/sns/sns.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/common/fontawesome/css/all.min.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp"></jsp:include>
	<!-- ���� ��ü ���� -->
	<div id="mainContents">
		<!-- ���� ���� -->
		<div class="section">
			<div class="slidewrap">
				<div class=slideControl>	
					<ul class="slidelist">
						<!-- �����̵� ���� -->
						<li class="slideitem">
							<p>����¡ �̵�Ȯ�ο� 1</p>
							<a>
								<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
							</a>
						</li>
						<li class="slideitem">
							<p>����¡ �̵�Ȯ�ο� 2</p>
							<a>
								<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
							</a>
						</li>
						<li class="slideitem">
							<p>����¡ �̵�Ȯ�ο� 3</p>
							<a>	
								<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
							</a>
						</li>
					</ul>
					<!-- ��,�� �����̵� ��ư -->
					<div class="slideBtn">
						<div>
							<span class="left"></span>
							<span class="right"></span>
						</div>
					</div>
				</div>
				<!-- ����¡ -->
				<ul class="slide-pagelist">
					<li><span class="js-slideActive"></span></li>
					<li><span></span></li>
					<li><span></span></li>
					<li><span></span></li>
				</ul>
			</div>	
		</div>
		<!-- �Ϲ� �Խñ� ���� -->
		<div class="filter">
			<!-- ���� -->
			<form action="">
				<div class="category">
					<ul class="categoryList">
						<li class="active">��ü��</li>
						<li>�ֽű�</li>
						<li>�α��</li>
					</ul>
				</div>
				<div class="sort">
					<ul class="sortList">
						<li class="active">����ϼ�</li>
						<li>��ȸ��</li>
						<li>��ۼ�</li>
						<li>���ƿ��</li>
					</ul>
				</div>
			</form>
				
		</div>
		<div class="post sizeTest">
				<ul>
					<li>
						<!-- �̹��� ���� -->
						<div>
							<img></img>
						</div>
			
						<!-- �Խñ� ���� -->
						<div>
							<!-- �ۼ��� ���� --
							<div>

							</div>
								<!-- ���� �����ϰ� -->
							<div>

							</div>
							<!-- ���ƿ� / ��� �� -->
							<i class="fa-solid fa-heart"></i>	
							<i class="fa-regular fa-comment-dots"></i>
						</div>
					</li>
				</ul>
			</div>	
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/common/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/common/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/sns/sns.js"></script>

</html>