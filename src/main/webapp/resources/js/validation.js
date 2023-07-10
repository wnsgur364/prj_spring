check = function(param) {
	onlyNum = /^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$/;

    if(onlyNum.test($.trim(param)) == false){
        alert("숫자만 입력해 주세요")
        $("#gender").focus();
        return false;
    } else {
//    	by pass
    }
}
			
