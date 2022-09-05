//게시글 클릭 시
$(".post").on("click", function(){

	$.ajax({
      url : url + "/sns/GetPostDetail",      
      type : "post",
      data : { postId : $(this).data("postid")},
      success : function(result){
	
		$(".modal-userId").html(result.postDetail.user_nickname);
		$(".modal-text").html(result.postDetail.content);
		
		result.postDetail.userLiked == true ? $(".liked").addClass("hidden") : $(".nlike").addClass("hidden");
		
		//데이터 초기화 필요
		$(".modalImg .modalImg-List").empty();
		$(".modal-post .modal-comment").empty();
		$(".modalImg").removeClass("hidden");
		$(".modal-post").removeClass("noneImg");
		$(".modal-comment-write").removeClass("noneImg");
			
		// 댓글 추가
		if(0 < result.commentList.length){
			addComment(result.commentList);
		}
		
		// 이미지 내용 추가
		if(0 < result.imgs.length){
			if(1 < result.imgs.length){
				$(".modalImg .imgSilde").removeClass("hidden");
			} else{
				$(".modalImg .imgSilde").addClass("hidden");
			}
			
			addImgs(result.imgs);
		} else{
			$(".modalImg").addClass("hidden");
			$(".modal-post").addClass("noneImg");
			$(".modal-comment-write").addClass("noneImg");
		}
		
		$(".modal-icon .likeCount").html(result.postDetail.count);
		
		// 댓글창 크기 조정
		$("#postDetail").css("display", "block");	
		$(".modal-comment").height($(".modalImg").height() - $(".modal-text").outerHeight(true) - 221);
		
		
		$(".modalBtn").click();
      },
      error : function(XHR, status, error) {
         console.error(status + " : " + error);
      }
   });
});



function addComment(commentList){
	for(var i = 0; i < commentList.length; i++){
		var date = new Date(commentList[i].reg_date);
		var text = '';
	
		text += '<div class="modal-commentArea">';
		text += '	<div class="modal-profileImg">';
		text += '		<img src="' + commentList[i].profilimg + '">';
		text += '	</div>';
		text += ' 	<div class="modal-textArea">';
		text += '		<div class="modal-commentInfo">'
		text += '			<div class="modal-userName">' + commentList[i].user_nickname + '</div>'
		text += '			<div class="modal-commentDate">'+ date.getFullYear() + "-" + ("0" +date.getMonth()).slice(-2) + "-" + ("0" + date.getDay()).slice(-2) + '</div>'
		text += '		</div>'
		text += '		<div class="modal-commentContente">' + commentList[i].content + '</div>';
		text += '	</div>';
		text += '</div>'
		
		$(".modal-comment").append(text);
	}			
}

function addImgs(imgList){
	for(var i = 0; i < imgList.length; i++){
		var text = "";
		
		text += '<li class="modalImg-item ' + (i == 0 ? "active" : "") + '">';
		text += '	<img src="' + url + '/assets/test/overHeight.jpg">';
		text += '</li>';
		
		$(".modalImg-List").append(text);
	}
}

$(".imgSildeLeft").on("click", function(){
	var clickPos = $(".modalImg-List .active").index();
	var length 	 = 0;
	
	// 첫 번째 인덱스에서 클릭된 경우 움직이지 않게 조건 분기
	if(clickPos == 0){
		return;
	}

	//활성화 위치 조정
	$(".modalImg-List .active").removeClass("active");
	$(".modalImg-List").children().eq(clickPos - 1).addClass("active");
	
	length = (clickPos - 1) * -100;
	$(".modalImg-List .modalImg-item").css({'transform':'translateX(' + length+ '%)'});
});

$(".imgSildeRight").on("click", function(){
	var clickPos = $(".modalImg-List .active").index();
	var endPos 	 = $(".modalImg-List").children().length;
	var length 	 = 0;
	
	// 첫 번째 인덱스에서 클릭된 경우 움직이지 않게 조건 분기
	if(clickPos == endPos - 1){
		return;
	}
	
	//활성화 위치 조정
	$(".modalImg-List .active").removeClass("active");
	$(".modalImg-List").children().eq(clickPos + 1).addClass("active");
	
	//이동할 위치 조정
	length = (clickPos + 1) * -100;
	
	$(".modalImg-List .modalImg-item").css({'transform':'translateX(' + length + '%)'})
});

//모달에서 좋아요 클릭 했을 때
$(".iconLikes").on("click", function(){
	var index = $(".iconLikes .hidden").index();
	$(".iconLikes .hidden").removeClass("hidden");
	
	if(index == 0){
		//이미 좋아요 버튼 클릭했을 경우
		$(".iconLikes").children().eq(1).addClass("hidden");
		$(".iconLikesInner .likeCount").html(Number($(".iconLikesInner .likeCount").html()) - 1);
	}else{
		//좋아요 버튼 클릭을 안했을 경우
		$(".iconLikes").children().eq(0).addClass("hidden");	
		$(".iconLikesInner .likeCount").html(Number($(".iconLikesInner .likeCount").html()) + 1);
	}
	
	//ajax를 통해 좋아요 추가하는 로직 필요
	
});
