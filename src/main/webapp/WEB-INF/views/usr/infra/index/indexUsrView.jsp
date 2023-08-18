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
	<title>KOKOA BANK</title>
	<!-- favicon -->
	<link rel="icon" href="/resources/assets/images/favicon/favicon.ico" type="image/x-icon" />
	<%@ include file="../../../include/css.jsp" %>  	
</head>
<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerUsrView.jsp" %>
	<div class="clearfix"></div>
	<div class="content-wrapper">
   		<div class="container-fluid">
    		<div class="row-md d-flex justify-content-center">
				<iframe width="1200" height="714" src="https://www.youtube.com/embed/NJUjU9ALj4A?controls=0&autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; muted; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="border-radius: 15px; margin: 50px;"></iframe>
			</div>
			<div class="row-md d-flex justify-content-center">
				<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
					<img src="resources/images/influencer1.jpg" class="card-img-top" alt="주식단테" style="margin-bottom: -15px;">
					<div class="fs-4 text-center py-4">주식단테</div>
					<div class="card-body d-flex justify-content-center align-items-end">
						<div>
							<a href="https://www.youtube.com/channel/UC6ij59Gy_HnqO4pFu9A_zgQ" style="text-decoration: none;" class="px-2">
								<i class="fa-brands fa-youtube" style="color: #ff0000; font-size: 30px;"></i>
							</a>
						</div>
						<div>
							<a href="https://www.instagram.com/imtaeho11/" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-instagram" style="color: #46729b; font-size: 30px;"></i>
							</a>
						</div>
					</div>
			  	</div>
				<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
					<img src="resources/images/influencer2.jpg" class="card-img-top" alt="삼프로TV" style="margin-bottom: -15px;">
					<div class="fs-1 text-center py-4">삼프로TV</div>
					<div class="card-body d-flex justify-content-center align-items-end">
						<div>
							<a href="https://www.youtube.com/channel/UChlv4GSd7OQl3js-jkLOnFA" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-youtube" style="color: #ff0000; font-size: 30px;"></i>
							</a>
						</div>
						<div>
							<a href="https://www.instagram.com/3protv.official/" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-instagram" style="color: #46729b; font-size: 30px;"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
					<img src="resources/images/influencer3.jpg" class="card-img-top" alt="슈카월드" style="margin-bottom: -15px;">
					<div class="fs-1 text-center py-4">슈카월드</div>
					<div class="card-body d-flex justify-content-center align-items-end">
						<div>
							<a href="https://www.youtube.com/channel/UCsJ6RuBiTVWRX156FVbeaGg" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-youtube" style="color: #ff0000; font-size: 30px;"></i>
							</a>
						</div>
						<div>
							<a href="https://www.instagram.com/syukaworld/" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-instagram" style="color: #46729b; font-size: 30px;"></i>
							</a>
						</div>
					</div>
			  	</div>
			  	<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
					<img src="resources/images/influencer4.jpg" class="card-img-top" alt="테미녀" style="margin-bottom: -15px;">
					<div class="fs-1 text-center py-4">테미녀</div>
					<div class="card-body d-flex justify-content-center align-items-end">
						<div>
							<a href="https://www.youtube.com/@tesla_crazy_lady" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-youtube" style="color: #ff0000; font-size: 30px;"></i>
							</a>
						</div>
						<div>
							<a href="https://www.instagram.com/tesla_crazy_lady/" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-instagram" style="color: #46729b; font-size: 30px;"></i>
							</a>
						</div>
					</div>
			  	</div>
				<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
					<img src="resources/images/influencer5.jpg" class="card-img-top" alt="천덩이" style="margin-bottom: -15px;">
					<div class="fs-1 text-center py-4">천덩이</div>
					<div class="card-body d-flex justify-content-center align-items-end">
						<div>
							<a href="https://www.youtube.com/channel/UCVqtfuvKbb5bZYcxrZ1pzJw" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-youtube" style="color: #ff0000; font-size: 30px;"></i>
							</a>
						</div>
						<div>
							<a href="https://www.instagram.com/cheondng2/" style="text-decoration: none;" class="fs-1 px-2">
								<i class="fa-brands fa-instagram" style="color: #46729b; font-size: 30px;"></i>
							</a>
						</div>
					</div>
			  	</div>
			</div>	
		</div>
		<!--start overlay-->
	  	<div class="overlay toggle-menu"></div>
		<!--end overlay-->
	</div><!--End content-wrapper-->
<%@ include file="../../../include/footer.jsp" %>  
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %>  	
</body>
</html>
