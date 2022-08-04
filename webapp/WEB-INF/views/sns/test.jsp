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
	<!-- 본문 전체 영역 -->
	<div id="mainContents">
		<!-- 공지 영역 -->
		<div class="section">
			<div class="slidewrap">
				<div class=slideControl>	
					<ul class="slidelist">
						<!-- 슬라이드 영역 -->
						<li class="slideitem">
							<a>
								<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
							</a>
						</li>
						<li class="slideitem">
							<a>
								<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
							</a>
						</li>
						<li class="slideitem">
							<a>	
								<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
							</a>
						</li>
					</ul>
					<!-- 좌,우 슬라이드 버튼 -->
					<div class="slideBtn">
						<div>
							<span class="left"></span>
							<span class="right"></span>
						</div>
					</div>
				</div>
				<!-- 페이징 -->
				<ul class="slide-pagelist">
					<li><span class="js-slideActive"></span></li>
					<li><span></span></li>
					<li><span></span></li>
					<li><span></span></li>
				</ul>
			</div>	
		</div>
		<!-- 일반 게시글 영역 -->
		<div class="filter">
			<!-- 필터 -->
			<form action="">
				<div class="category">
					<ul class="categoryList">
						<li class="active">전체글</li>
						<li>최신글</li>
						<li>인기글</li>
					</ul>
				</div>
				<div class="sort">
					<ul class="sortList">
						<li class="active">등록일순</li>
						<li>조회순</li>
						<li>댓글순</li>
						<li>좋아요순</li>
					</ul>
				</div>
			</form>
				
		</div>
		<div class="posList">
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/overHeight.jpg">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							게시글 내용을 무진장 많이 넣어 보자 하하하하하하
							깔깔깔 푸푸푸푸 칼칼칼칼 창창창창	
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/overWidth.jpg">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							<p>게시글 내용 TEST</p>
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/overHeight.jpg">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							<p>게시글 내용 TEST</p>
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							<p>게시글 내용 TEST</p>
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/overWidth.jpg">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							<p>게시글 내용 TEST</p>
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							<p>게시글 내용 TEST</p>
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="post">
				<!-- 이미지 영역 -->
				<div class="postImgArea">
					<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
				</div>
				<!-- 게시글 영역 -->
				<div class="postContentArea">
					<!-- 작성자 이미지 -->
					<div class="profileImg">
						<img alt="profileImg" src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
					</div>
					<div class="text">
						<!-- 작성자 정보 -->
						<div class="writerInfo">
							<div class=writerInfo-name>
								뚜성
							</div>
							<div class="writerInfo-date">
								2022.08.03
							</div>
						</div>
						<div class="contents">
							<p>게시글 내용 TEST</p>
						</div>
						<div class="contentsInfo">
							<!-- 좋아요 / 댓글 수 -->
							<div class="likeCount">
								<i class="fa-solid fa-heart"></i>
								<span>
									30
								</span>
							</div>
							
							<div class="commentCount">
								<i class="fa-regular fa-comment-dots"></i>
								<span>
									20
								</span>
							</div>
						</div>	
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/common/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/common/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/sns/sns.js"></script>

</html>