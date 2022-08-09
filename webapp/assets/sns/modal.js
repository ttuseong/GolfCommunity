$(".post").on("click", function(){
	console.log($(".modal-body").height());
	console.log($(".modalImg").height() - 500);
	$(".modal-comment").height($(".modalImg").height() - 500);
});