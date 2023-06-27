<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KOKOA BANK</title>
  	<!-- CSS -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="/resources/css/style.css" rel="stylesheet">
	<link href="/resources/vendor/simple-datatables/style.css" rel="stylesheet">
	<link href="/resources/vendor/jquery-ui/jquery-ui.min.css" rel="stylesheet">
	<!-- Google Fonts -->
	<link href="https://fonts.gstatic.com" rel="preconnect">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!-- font-family: 'Dongle', sans-serif; -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&display=swap" rel="stylesheet">	
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="d-flex justify-content-center" style="padding: 33px; height: 714px; margin-top: 50px;">
				<iframe width="1200" height="100%" src="https://www.youtube.com/embed/NJUjU9ALj4A?controls=0?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="border-radius: 15px; margin: 50px;"></iframe>
			</div>	
		</div>
		<div class="row-md d-flex justify-content-center" style="padding: 50px; font-family: 'Dongle', sans-serif;">
			<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
				<img src="assets/img/influencer1.jpg" class="card-img-top" alt="주식단테" style="margin-bottom: -15px;">
				<div class="fs-1 text-center py-4">주식단테</div>
				<div class="card-body d-flex justify-content-center align-items-end">
					<div>
						<a href="https://www.youtube.com/channel/UC6ij59Gy_HnqO4pFu9A_zgQ" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-youtube" style="color: #ff0000;"></i>
						</a>
					</div>
					<div>
						<a href="https://www.instagram.com/imtaeho11/" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-instagram" style="color: #46729b;"></i>
						</a>
					</div>
				</div>
		  	</div>
			<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
				<img src="assets/img/influencer2.jpg" class="card-img-top" alt="삼프로TV" style="margin-bottom: -15px;">
				<div class="fs-1 text-center py-4">삼프로TV</div>
				<div class="card-body d-flex justify-content-center align-items-end">
					<div>
						<a href="https://www.youtube.com/channel/UC6ij59Gy_HnqO4pFu9A_zgQ" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-youtube" style="color: #ff0000;"></i>
						</a>
					</div>
					<div>
						<a href="https://www.instagram.com/imtaeho11/" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-instagram" style="color: #46729b;"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
				<img src="assets/img/influencer3.jpg" class="card-img-top" alt="슈카월드" style="margin-bottom: -15px;">
				<div class="fs-1 text-center py-4">슈카월드</div>
				<div class="card-body d-flex justify-content-center align-items-end">
					<div>
						<a href="https://www.youtube.com/channel/UC6ij59Gy_HnqO4pFu9A_zgQ" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-youtube" style="color: #ff0000;"></i>
						</a>
					</div>
					<div>
						<a href="https://www.instagram.com/imtaeho11/" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-instagram" style="color: #46729b;"></i>
						</a>
					</div>
				</div>
		  	</div>
			  <div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
				<img src="assets/img/influencer4.jpg" class="card-img-top" alt="테미녀" style="margin-bottom: -15px;">
				<div class="fs-1 text-center py-4">테미녀</div>
				<div class="card-body d-flex justify-content-center align-items-end">
					<div>
						<a href="https://www.youtube.com/channel/UC6ij59Gy_HnqO4pFu9A_zgQ" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-youtube" style="color: #ff0000;"></i>
						</a>
					</div>
					<div>
						<a href="https://www.instagram.com/imtaeho11/" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-instagram" style="color: #46729b;"></i>
						</a>
					</div>
				</div>
		  	</div>
			<div class="card" style="width: 13rem; height: 330px; margin: 0 20px;">
				<img src="assets/img/influencer5.jpg" class="card-img-top" alt="천덩이" style="margin-bottom: -15px;">
				<div class="fs-1 text-center py-4">천덩이</div>
				<div class="card-body d-flex justify-content-center align-items-end">
					<div>
						<a href="https://www.youtube.com/channel/UC6ij59Gy_HnqO4pFu9A_zgQ" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-youtube" style="color: #ff0000;"></i>
						</a>
					</div>
					<div>
						<a href="https://www.instagram.com/imtaeho11/" style="text-decoration: none;" class="fs-1 px-2">
							<i class="fa-brands fa-instagram" style="color: #46729b;"></i>
						</a>
					</div>
				</div>
		  	</div>
		</div>	
	</div>
	<!-- 뉴스 -->
	<div class="container" id="news" style="width: 1320px; height: 900px; padding-top: 100px;">
		<div class="h4 d-flex justify-content-center">뉴스 API</div>
	</div>
	<%@ include file="footer.jsp" %>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/vendor/jquery/jquery.min.js"></script> 
	<script src="/resources/vendor/jquery-ui/jquery-ui.min.js"></script>
	<script src="/resources/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="/resources/js/main.js"></script>
</body>
</html>