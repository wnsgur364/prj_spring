<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>		

<style>
	.modal-content{
		background-image: linear-gradient(45deg, #29323c, #485563);
		background-size: 100% 100%;
		background-position: center;
		transition: background .3s;
	};
</style>

<div class="modal fade" id="staticModal" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticModalLabel">경고</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"> 
        정말 삭제 하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger" id="btnDelete">삭제</button>
      </div>
    </div>
  </div>
</div>