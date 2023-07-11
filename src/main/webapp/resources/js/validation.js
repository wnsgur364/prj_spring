    checkId = function(obj) {
        var regExp = /^[A-Za-z0-9,_-]{4,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text("영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다.");
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
        
    checkPw = function(obj) {
        var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text("영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다.");
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
	
	checkPwCheck = function(obj) {
	    var objPassword = $("#pw");
	    var objPasswordValue = objPassword.val().trim();
	
	    if (obj.val().trim() === objPasswordValue) {
	        obj.removeClass("is-invalid");
	        return true;
	    } else {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text("비밀번호가 일치하지 않습니다.");
	        return false;
	    }
	}
	
   checkName = function(obj) {
        var regExp = /^[ㄱ-ㅎ가-힣]{2,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text("이름을 입력해 주세요.");
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }

   checkEmail = function(obj) {
        var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text("이메일 주소를 입력해 주세요.");
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
	
   checkPhone = function(obj) {
        var regExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text("전화번호는 숫자만 입력해 주세요.");
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }