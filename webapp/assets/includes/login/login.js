var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
/*
 *
 * login-register modal
 * Autor: Creative Tim
 * Web-autor: creative.tim
 * Web script: http://creative-tim.com
 * 
 */
function showRegisterForm() {
	$('.loginBox').fadeOut('fast', function() {
		$('.registerBox').fadeIn('fast');
		$('.login-footer').fadeOut('fast', function() {
			$('.register-footer').fadeIn('fast');
		});
		$('.modal-title').html('Register with');
	});
	$('.error').removeClass('alert alert-danger').html('');

}
function showLoginForm() {
	$('#loginModal .registerBox').fadeOut('fast', function() {
		$('.loginBox').fadeIn('fast');
		$('.register-footer').fadeOut('fast', function() {
			$('.login-footer').fadeIn('fast');
		});

		$('.modal-title').html('Login with');
	});
	$('.error').removeClass('alert alert-danger').html('');
}

function openLoginModal() {
	showLoginForm();
	setTimeout(function() {
		$('#loginModal').modal('show');
	}, 230);

}

function loginAjax() {
	/*   Remove this comments when moving to server
	$.post( "/login", function( data ) {
			if(data == 1){
				window.location.replace("/home");            
			} else {
				 shakeModal(); 
			}
		});
	*/

	/*   Simulate error message from the server   */
	shakeModal();
}

$(".js-addAccount").on("click", function() {

	if ($(".js-add-account-id").val() == "" || $(".js-add-account-id").val() == undefined) {
		alert("입력 칸을 확인해주세요");
		return;
	}
	
	if($(".js-add-account-nickName").val() == "" || $(".js-add-account-nickName").val() == undefined){
		alert("입력 칸을 확인해주세요");
		return;
	}

	if ($(".js-add-account-pwd").val() == "" || $(".js-add-account-pwd").val() == undefined) {
		alert("입력 칸을 확인해주세요");
		return;
	}

	if ($(".js-add-account-pwd").val() != $(".js-add-account-pwdConfirmatin").val()) {
		alert("비밀번호가 불일치합니다.");
		return;
	}
	
	// 비밀번호 자리수 및 알파벳 특수문자

	var data = {"id" : $(".js-add-account-id").val(),
				"nickName" : $(".js-add-account-nickName").val(),
				"password" : $(".js-add-account-pwd").val()}

	$.ajax({
    	url : url + "/login/addAccount",      
      	type : "post",
      	data : data,
      	success : function(result){
			console.log(result);
	
		
      	},
      	error : function(XHR, status, error) {
         	console.error(status + " : " + error);
      	}
   	});
});

function shakeModal() {
	$('#loginModal .modal-dialog').addClass('shake');
	$('.error').addClass('alert alert-danger').html("Invalid email/password combination");
	$('input[type="password"]').val('');
	setTimeout(function() {
		$('#loginModal .modal-dialog').removeClass('shake');
	}, 1000);
}

