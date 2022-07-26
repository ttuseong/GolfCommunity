$(document).ready(function(){
	autoSilde();
});

//사용자가 브라우저의 크기를 변경할 경우
$(window).resize(function(){
  postSort();
});

// 슬라이드 자동으로 이동 시켜주는 함수
function autoSilde(){
	postSort();
	setInterval(function(){
		$(".slideBtn .right").click();
	}, 8000); 	
}


// 슬라이드 오른쪽 화살표 버튼 클릭했을 때
$(".right").on("click", function(){
	var slideActive 	= $(".slide-pagelist .js-slideActive");
	var pos 			= slideActive.parent().index() + 1;
	var pageLength 		= $(".slide-pagelist").children().length;
	var translateValue 	= 0;
	
	//현재 활성화된 클래스 제거
	slideActive.removeClass("js-slideActive");
	
	//다음 이동해야하는 곳 클래스 추가
	pos = pos == pageLength ? 0 : pos;
	$(".slide-pagelist").children().eq(pos).children('span').addClass("js-slideActive");
	
	//슬라이드 이동
	translateValue = pos * -100;
  	$('.slidelist > li').css({'transform':'translateX(' + translateValue + '%)'})
	
});

// 슬라이드 왼쪽 화살표 클릭했을 때
$(".left").on("click", function(){
	var slideActive 	= $(".slide-pagelist .js-slideActive");
	var pos 			= slideActive.parent().index() - 1;
	var pageLength 		= $(".slide-pagelist").children().length;
	var translateValue 	= 0;
	
	//현재 활성화된 클래스 제거
	slideActive.removeClass("js-slideActive");
	
	//다음 이동해야하는 곳 클래스 추가
	pos = pos < 0 ? pageLength - 1 : pos;
	$(".slide-pagelist").children().eq(pos).children('span').addClass("js-slideActive");
	
	//슬라이드 이동
	translateValue = pos * -100;
  	$('.slidelist > li').css({'transform':'translateX(' + translateValue + '%)'})
})

//슬라이드 아래 특정 위치로 보내주는 버튼 클릭시 이동
$(".slide-pagelist li").on("click", function(){
	var clikcPos = $(this).index();
	var slideActive 	= $(".slide-pagelist .js-slideActive");
	var translateValue 	= clikcPos * -100;
	
	//현재 활성화된 클래스 제거
	slideActive.removeClass("js-slideActive");
	
	//다음 이동해야하는 곳 클래스 추가
	$(".slide-pagelist").children().eq(clikcPos).children('span').addClass("js-slideActive");
	
	//슬라이드 이동
	$('.slidelist > li').css({'transform':'translateX(' + translateValue + '%)'})
});


//게시글 위치 조정
function postSort(){
	//전체 width의 크기에 따라 보여지는 이미지 수가 다르기 때문에 body의 width 값 조회
	var currentWidth = $("body").width();
	//배열의 크기를 저장할 변수 -> 배열의 크기는 하나의 로우에 나올 이미지 숫자입니다.
	var arrSize = 0;
	
	//크기에 맞게 값 저장
	if(1240 < currentWidth){
		arrSize = 4;
	}else if(770 < currentWidth){
		arrSize = 3;
	} else if(560 < currentWidth){
		arrSize = 2;
	}else{
		arrSize = 1;
	}
	
	// 각 위치의 현재 높이 값을 저장할 변수
	var arr = new Array(arrSize).fill(0);
	// 반복할 횟수 저장
	var length = $(".posList").children().length;
	// 변경할 인덱스 값
	var chanegeIndex = 0;
	//position top 이동할 크기
	var top = 0;
	//position left 이동할 크기
	var left = 0;
	// 위치 변경할 대상
	var target;

	//게시글의 변경될 width 저장 및 변경
	var postWidth = ($("#mainContents").width() - (12 * (arrSize - 1))) / arrSize;
	$(".posList .post").css("width", postWidth);
	
	//게시글 순서대로 위치 조정
	for(var i = 0; i < length; i++){
		target = $(".posList").children().eq(i);
		chanegeIndex = arr.reduce((max, val, index) => val < arr[max] ? index : max, 0)
		left = (chanegeIndex * 12) + (chanegeIndex * postWidth);
		top = arr[chanegeIndex];
		arr[chanegeIndex] += target.height() + 12;
		
		target.css("left", left);
		target.css("top", top);
	}
	
	//posList의 높이 값이 있어야 필터가 화면 상단에 붙어 있을 수 있어서 가장 큰 height 값을 저장
	$(".posList").css("height", Math.max.apply(null, arr));
}