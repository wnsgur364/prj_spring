<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>		
	
	
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropTitle" aria-hidden="true">
	<div class="modal-dialog">
 		<div class="modal-content">
   			<div class="modal-header">
     			<h1 class="modal-title fs-5" id="staticBackdropTitle">title</h1>
     			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
   			</div>
   			<div class="modal-body" id="staticBackdropBody">
     			body
   			</div>
   			<div class="modal-footer">
     			<button type="button" class="btn btn-success" data-bs-dismiss="modal">Cancel</button>
     			<button type="button" class="btn btn-danger" id="btnDelete">OK</button>
   			</div>
 		</div>
	</div>
</div>

<script>

	//모달관련
	$('#btnDeleteCheck').on('click', function() {
	  	$('#staticBackdrop').css('display', 'block');
	 	$('#staticBackdropTitle').text('삭제');
	  	$('#staticBackdropBody').text('정말 삭제 하시겠습니까?');
	});

</script>