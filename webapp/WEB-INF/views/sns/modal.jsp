<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- Modal -->
  <div class="modal fade" id="postDetail">
  	<button type="button" class="close" data-dismiss="modal">&times;</button>
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <!-- 이미지 영역 -->
          <div class="modalImg">
          	<img src="${pageContext.request.contextPath}/assets/test/overHeight.jpg">
          </div>
          
          <!-- 게시글 영역 -->
          <div class="modal-post">
          	<!-- 작성자 설명 -->
          	<div class="modal-userInfo">
          		<!-- 대표 이미지 -->
          		<div class="modal-userImg">
          			<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
          		</div>	
          		<div class="modal-userId">
          		</div>
          	</div>
          	
          	<!-- 게시글 내용 -->
          	<div class="modal-text">
          	</div>
          	<div class="modal-icon">
          		<div class="iconLikes">
          			<div class="liked">
          				<i class="fa-regular fa-heart"></i>
          			</div>
          			<div class="nlike hidden">
          				<i class="fa-solid fa-heart"></i>
          			</div>		
          		</div>
          		<div class="iconReport">
          			<i class="fa-solid fa-land-mine-on"></i>
          		</div>
          	</div>
 			<div class="modal-comment">
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				<div class="modal-commentArea">
 					<div class="modal-profileImg">
 						<img src="${pageContext.request.contextPath}/assets/test/testImg.PNG">
 					</div>
 					<div class="modal-textArea">
 						<div class="modal-commentInfo">
 							<div class="modal-userName">
 								유재학
 							</div>
 							<div class="modal-commentDate">
 								2022-08-09
 							</div>
 						</div>
 						<div class="modal-commentContente">
 							정말 최고에용
 						</div>
 					</div>
 				</div>
 				
 			</div>
 			<div class="modal-comment-write">
 				<form action="">
 					<textarea class="commentArea" name="comment"></textarea>
 					<div class="commentBtn">
 						<button type="submit" class="btn btn-dark "> 등록</button>
 					</div>
 				</form>
 			</div>
          </div>
        </div>
      </div>    
    </div>
  </div>