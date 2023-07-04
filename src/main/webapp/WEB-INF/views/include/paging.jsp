<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>		
<!-- Paging[s] -->

<div class="col-sm-12 col-md-7" style="text-align:right">
<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
  <ul class="pagination">
  
  <c:if test="${vo.prev}">
  <li class="paginate_button page-item previous" id="dataTable_previous">
 		 <a href="javascript:void(0);" onclick="fn_go_page(${vo.startDate - 1}); return false;" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
  </li>
  </c:if>
  
  <c:forEach var="num" begin="${vo.startDate}" end="${vo.endDate}">
  <li class="paginate_button page-item">
 		 <a href="javascript:void(0);" onclick="fn_go_page(${num}); return false;" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">${num}</a>
  </li>
  </c:forEach>
  
  <c:if test="${vo.next}">
  <li class="paginate_button page-item next" id="dataTable_next">
 		 <a href="javascript:void(0);" onclick="fn_go_page(${vo.endDate + 1}); return false;" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Next</a>
  </li>
  </c:if>
  </ul>
</div>
</div>
<!-- Paging[e] -->