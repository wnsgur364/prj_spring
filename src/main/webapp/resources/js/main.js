document.addEventListener('DOMContentLoaded', () => {
	
	"use strict";
	
	// Easy selector helper function
	const select = (el, all = false) => {
		el = el.trim()
		if (all) {
			return [...document.querySelectorAll(el)]
		} else {
			return document.querySelector(el)
		}
	}

	// Easy event listener function
	const on = (type, el, listener, all = false) => {
		if (all) {
			select(el, all).forEach(e => e.addEventListener(type, listener))
		} else {
			select(el, all).addEventListener(type, listener)
		}
	}

    // Initiate Bootstrap validation check
  	var needsValidation = document.querySelectorAll('.needs-validation')

	Array.prototype.slice.call(needsValidation)
	.forEach(function(form) {
		form.addEventListener('submit', function(event) {
			if (!form.checkValidity()) {
				event.preventDefault()
				event.stopPropagation()
			}

			form.classList.add('was-validated')
		}, false)
	})
	
  	// Scroll top button 
  	const scrollTop = document.querySelector('.scroll-top');
  	if (scrollTop) {
    	const togglescrollTop = function() {
      		window.scrollY > 100 ? scrollTop.classList.add('active') : scrollTop.classList.remove('active');
    	}
    	window.addEventListener('load', togglescrollTop);
    	document.addEventListener('scroll', togglescrollTop);
    	scrollTop.addEventListener('click', window.scrollTo({
      		top: 0,
      		behavior: 'smooth'
    	}));
  	}
	
	// checkbox all check
	document.getElementById("allCheck").addEventListener('change', function(){
		for (var i = 0; i < document.getElementsByName("checked").length; i++) {
			document.getElementsByName("checked")[i].checked = this.checked;
		}
	});	
	
});

// datepicker
$(function() {
	$(".datepicker").datepicker({
		dateFormat: 'yy-mm-dd'
	});
});

// 기간 설정
$(".selectPeriod").on("change", function() {
	var period = $(this).val();
	var today = new Date();
	var oneWeekAgo = new Date(today.getTime() - (7 * 24 * 60 * 60 * 1000));
	var oneMonthAgo = new Date(today.getTime() - (30 * 24 * 60 * 60 * 1000));
	var threeMonthsAgo = new Date(today.getTime() - (90 * 24 * 60 * 60 * 1000));
	
	switch (period) {
		case "1주일":
			$(".dateStart").datepicker("setDate", oneWeekAgo);
			$(".dateFinish").datepicker("setDate", today);
			break;
		case "1개월":
			$(".dateStart").datepicker("setDate", oneMonthAgo);
			$(".dateFinish").datepicker("setDate", today);
			break;
		case "3개월":
			$(".dateStart").datepicker("setDate", threeMonthsAgo);
			$(".dateFinish").datepicker("setDate", today);
			break;
	}
});

// 모달관련
$('#btnDeleteCheck').on('click', function() {
  	$('#staticBackdrop').css('display', 'block');
 	$('#staticBackdropTitle').text('삭제');
  	$('#staticBackdropBody').text('정말 삭제 하시겠습니까?');
});

$("#btnModification").click(function() {
	// 체크된 체크박스를 배열로 저장
	var checkedItems = [];
	$("input[name='checked']:checked").each(function() {
		checkedItems.push($(this).closest("tr").find("td:eq(1)").text()); // seq 값 가져오기
	});

	// 수정 폼으로 데이터 전달
	if (checkedItems.length > 0) {
		var url = "codeGroupForm?seq=" + checkedItems.join(",");
		location.href = url;
	}
	
    // 체크박스 해제
    $("input[name='checked']").prop('checked', false);
});