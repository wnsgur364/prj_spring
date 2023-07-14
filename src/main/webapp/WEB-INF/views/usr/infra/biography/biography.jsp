<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>Biography</title>
	<%@ include file="../../../include/css.jsp" %> 
</head>
<body class="bg-theme bg-theme9">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerBiography.jsp" %>
	<div class="clearfix"></div>
  	<div class="content-wrapper">
    	<div class="container-fluid">
      		<div class="row mt-3">
        		<div class="col-lg-4">
           			<div class="card profile-card-2">
            			<div class="card-img-block">
                			<img class="img-fluid" src="https://via.placeholder.com/800x500" alt="Card image cap">
            			</div>
            			<div class="card-body pt-5">
                			<img src="/resources/images/profile-img.jpg" alt="profile-image" class="profile">
               				<h5 class="card-title">이준혁</h5>
               				<p class="card-text">1991.02.10</p>
             				<h6><strong>깃허브 : </strong><a href="https://github.com/wnsgur364"> https://github.com/wnsgur364</a></h6>
            			</div>
            			<div class="card-body border-top border-light">
                 			<div class="media align-items-center">
                   				<div><img src="/resources/assets/images/timeline/html5.svg" class="skill-img" alt="skill img"></div>
                     				<div class="media-body text-left ml-3">
                       					<div class="progress-wrapper">
                         					<p>HTML5 <span class="float-right">65%</span></p>
                         					<div class="progress" style="height: 5px;">
                          						<div class="progress-bar" style="width:65%"></div>
                         					</div>
                        				</div>                   
                    				</div>
                  				</div>
                 				<hr>
                  				<div class="media align-items-center">
                   					<div><img src="/resources/assets/images/timeline/bootstrap-4.svg" class="skill-img" alt="skill img"></div>
                   					<div class="media-body text-left ml-3">
                   						<div class="progress-wrapper">
                       						<p>Bootstrap 4 <span class="float-right">50%</span></p>
                       						<div class="progress" style="height: 5px;">
                       							<div class="progress-bar" style="width:50%"></div>
                       						</div>
                      					</div>                   
                  					</div>
               					</div>
               				<hr>
                  			<div class="media align-items-center">
                   				<div><img src="/resources/assets/images/timeline/angular-icon.svg" class="skill-img" alt="skill img"></div>
                     			<div class="media-body text-left ml-3">
                       				<div class="progress-wrapper">
	                         			<p>AngularJS <span class="float-right">70%</span></p>
	                         			<div class="progress" style="height: 5px;">
	                          				<div class="progress-bar" style="width:70%"></div>
	                         			</div>
                      				</div>                   
                    			</div>
                  			</div>
                    		<hr>
                  			<div class="media align-items-center">
                   				<div><img src="/resources/assets/images/timeline/react.svg" class="skill-img" alt="skill img"></div>
                     			<div class="media-body text-left ml-3">
                       				<div class="progress-wrapper">
                         				<p>React JS <span class="float-right">35%</span></p>
                         				<div class="progress" style="height: 5px;">
			                          		<div class="progress-bar" style="width:35%"></div>
										</div>
                        			</div>                   
                    			</div>
                  			</div>
              			</div>
        			</div>
        		</div>
        		<div class="col-lg-8">
           			<div class="card">
            			<div class="card-body">
            				<ul class="nav nav-tabs nav-tabs-primary top-icon nav-justified">
                				<li class="nav-item">
                    				<a href="javascript:void();" data-target="#profile" data-toggle="pill" class="nav-link active"><i class="icon-user"></i> <span class="hidden-xs">Profile</span></a>
                				</li>
            				</ul>
            				<div class="tab-content p-3">
                				<div class="tab-pane active" id="profile">
                    				<h5 class="mb-3">🛠 Skills</h5>
                    				<div class="row">
                        				<div class="col-md-12">
				                            <p>
				                                Java Spring Backend Developer
				                            </p>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">AWS RDS</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">AWS EC2</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">MySQL</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">jQuery</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">Spring</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">Apache Tomcat</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">HTML5</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">CSS3</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">JAVA</a>
				     	                    <a href="javascript:void();" class="badge badge-dark badge-pill">JavaScript</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">Bootstrap</a>
				                        </div>
                        				<div class="col-md-12">
                            				<h5 class="mt-2 mb-3"><span class="fa fa-clock-o ion-clock float-right"></span>포트폴리오</h5>
                             				<div class="table-responsive">
                            					<table class="table table-hover table-striped">
                                					<tbody>                                    
					                                    <tr>
					                                        <td>
					                                            <strong>링크 : </strong><a href="indexUsrView"><strong>개인프로젝트 사용자 KOKOA BANK (가상 웹 뱅킹 서비스)</strong></a>
					                                        </td>
					                                    </tr>
					                                    <tr>
					                                        <td>
					                                            <strong>링크 : </strong><a href="indexXdmView"><strong>개인프로젝트 관리자 KOKOA BANK (가상 웹 뱅킹 서비스)</strong></a>
					                                        </td>
					                                    </tr>
					                                    <tr>
					                                        <td>
					                                            <strong>링크 : </strong><strong>팀프로젝트 사용자 `LingoConnet (웹 언어 학습 서비스)`</strong>
					                                        </td>
					                                    </tr>
					                                    <tr>
					                                        <td>
					                                            <strong>링크 : </strong><strong>팀프로젝트 관리자 `LingoConnet (웹 언어 학습 서비스)`</strong>
					                                        </td>
					                                    </tr>
					                                    <tr>
					                                        <td>
					                                            <strong>링크 : </strong><strong>기타</strong><strong>`미정`</strong>
					                                        </td>
					                                    </tr>
                                					</tbody>
                            					</table>
                       						</div>
                        				</div>
                    				</div>
                    				<!--/row-->
                				</div>
            				</div>
        				</div>
      				</div>
      			</div>
    		</div>
			<!--start overlay-->
			<div class="overlay toggle-menu"></div>
			<!--end overlay-->
	    </div>
	    <!-- End container-fluid-->
	</div><!--End content-wrapper-->
<%@ include file="../../../include/footer.jsp" %> 
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %>  
</body>
</html>