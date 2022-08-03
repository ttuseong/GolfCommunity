$(document).ready(function(){
	autoSilde();
});

function autoSilde(){
	postSort();
	setInterval(function(){
		$(".slideBtn .right").click();
	}, 8000); 	
}

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

$(".slide-pagelist li").on("click", function(){
	console.log("test");
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

function postSort(){
	// 각 위치의 현재 높이 값을 저장할 변수
	var arr = [0, 0, 0, 0];
	// 반복할 횟수 저장
	var length = $(".posList").children().length;
	var chanegeIndex = 0;
	var top = 0;
	var left = 0;
	var target;
	
	for(var i = 0; i < length; i++){
		target = $(".posList").children().eq(i);
		chanegeIndex = arr.reduce((max, val, index) => val < arr[max] ? index : max, 0)
		left = (chanegeIndex * 12) + (chanegeIndex * 286);
		top = arr[chanegeIndex];
		arr[chanegeIndex] += target.height() + 12;
		
		target.css("left", left);
		target.css("top", top);
	}
}