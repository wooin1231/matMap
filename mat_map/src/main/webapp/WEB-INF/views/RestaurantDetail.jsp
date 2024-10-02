	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ page session="false"%>
	
	<!DOCTYPE html>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<html lang="en">
	<style>
	@import
		url('https://fonts.googleapis.com/css?family=Lato:400,700,900|Open+Sans:300,400|Oswald:400,700')
		;
	
	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
		font-family: 'Lato', sans-serif;
	}
	
	html, body {
		
	}
	
	/***************/
	.slider {
		margin: 0 auto;
		width: 800px;
	}
	
	.slick-slide {
		transform: scale(0.8);
		transition: all 0.4s ease-in-out;
		padding: 60px 0;
	}
	
	.slick-slide img {
		max-width: 100%;
		transition: all 0.4s ease-in-out;
	}
	
	.slick-center {
		transform: scale(1.1);
	}
	
	.RsTitle {
		 position:  relative;
		        left:  500px;
	}
	
	.rating {
		font-size: 24px;
	}
	
	.rating2 {
		font-size: 16px;
	}
	
	.btn-group {
		top: -150px;
		left: 560px;
	}
	
	table.storeInfo {
		width: 400px;
		padding-top: - 100px;
		border-collapse: collapse;
		text-align: left;
		height: 30px;
		line-height: 1.5;
		border-top: none;
		border-left: none;
		border-right: none;
		border-bottom: none;
		float: left;
	}
	
	table.storeInfo th {
		width: 130px;
		padding: 10px;
		text-align: left;
		font-size: 15px;
		vertical-align: top;
		color: #999999;
		border-right: none;
		border-bottom: none;
	}
	
	table.storeInfo td {
		padding: 10px;
		vertical-align: top;
		border-right: none;
		border-bottom: none;
		width: 40px;
	}
	
	table.storeInfo  td>#nextButton {
		margin-top: -5px;
		width: 15px;
		height: 15px;
		cursor: pointer;
	}
	
	table.storeInfo  td>#prevButton {
		margin-top: -5px;
		width: 15px;
		height: 15px;
		cursor: pointer;
	}
	
	#btn2 {
		width: 40px;
		height: 20px;
		font-size: 13px;
		font-family: 'Nanum Gothic';
		color: black;
		text-align: center;
		border: solid 0.4px black;
		border-radius: 3px;
	}
	
	.yotubeLogo {
		width: 20px;
		height: 20px;
	}
	
	#mediaImage {
		width: 20px;
		height: 20px;
		margin-top: -5px;
	}
	
	.stNumber {
		width: 20px;
		height: 20px;
		font-size: 13px;
		font-family: 'Nanum Gothic';
		border: 1px solid #ccc;
	}
	
	.stNump {
		margin-top: -2px;
		margin-left: -15px;
		height: 13px;
	}
	
	table.storeMap {
		float: left;
		width: 400px;
		border: 1px solid black;
		padding-top: - 100px;
		border-collapse: collapse;
		text-align: left;
		height: 30px;
		line-height: 1.5;
		border-top: none;
		border-left: none;
		border-right: none;
		border-bottom: none;
		padding-top: - 100px;
	}
	
	table.storeMap th {
		width: 130px;
		padding: 10px;
		text-align: left;
		font-size: 15px;
		vertical-align: top;
		color: #999999;
		border-right: none;
		border-bottom: none;
	}
	
	table.storeMap td {
		padding: 10px;
		vertical-align: top;
		border-right: none;
		border-bottom: none;
		width: 40px;
		height: 400px;
	}
	
	#map {
		margin-top: 10px;
		width: 300px;
		height: 400px;
		margin-left: 70px;
		margin-right: auto;
	}
	
	.card-text {
		margin-top: -20px;
		margin-left: 15px;
	}
	
	#btn-group2 {
		margin-top: 30px;
		text-align: center;
	}
	
	#plusButton{
		margin-top: 20px;
		width:850px;
	}
	
/* 화살표 색상 변경*/
.slick-prev:before, .slick-next:before{
  color: black !important;
  opacity: 1 ; 
}
/* 화살표 위치 변경 */
.slick-prev{
  right: -190px !important ;
  z-index: 9 ;
}
.slick-next{
  right: -26px !important ;
  z-index: 9 ;  
}

	</style>
	<!-- <link
	  rel="stylesheet"
	  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
	/>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 -->
	
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"> -->
	<head>
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<meta charset="UTF-8">
	
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css"
		href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<!-- Add the slick-theme.css if you want default styling -->
	<link rel="stylesheet" type="text/css"
		href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
		<link rel="stylesheet" href="${root}/resources/css/map.css">
	<link rel= "stylesheet" href= "https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" >
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
		rel="stylesheet" type="text/css" />
	<link
		href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
		rel="stylesheet" type="text/css" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Agency - Start Bootstrap Theme</title>
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
		crossorigin="anonymous"></script>
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/styles.css" rel="stylesheet" />
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light" id="mainNav">
			<div class="container px-4 px-lg-5"" >
				<a class="navbar-brand" href="#page-top"><img
					src="assets/img/MatMap.png" alt="..." style="height: 80px;" /></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
					aria-controls="navbarResponsive" aria-expanded="false"
					aria-label="Toggle navigation">
					Menu <i class="fas fa-bars ms-1"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" id="foodType" href="foodType">음식 종류별 맛집</a></li>
						<li class="nav-item"><a class="nav-link" id="famousMap"
							href="famousMap">유명인 Map</a></li>
						<li class="nav-item"><a class="nav-link" id="notice"
							href="notice">게시판</a></li>
						<li class="nav-item"><a class="nav-link" id="use" href="use">이용방법</a></li>
					</ul>
				</div>
			</div>
		</nav>
	
	
		<div class="slider">
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
	
		</div>
			
	
		<section class="container" style="max-width: 850px; max-height: 600px;">
			<h2 style="font-size: 30px; margin-top: -120px;" class="RsTitle">
				<strong>대성집 도가니탕</strong>
			</h2>
			<div class="title">
				<div class="title">
					<p class="rating">⭐ 4.0 / 5.0</p>
					<p>입에 착 감기는 40년 내공의 도가니 국물</p>
				</div>
			</div>
	
			<div class="btn-group" role="group"
				aria-label="Basic mixed styles example">
				<button type="button" class="btn btn-danger"
					style="background-color: #ff7f00; border-color: white;">좋아요</button>
				<button type="button" class="btn btn-danger"
					style="background-color: #ff7f00; border-color: white;">리뷰
					쓰기</button>
				<button type="button" class="btn btn-danger"
					style="background-color: #ff7f00; border-color: white;">예약하기</button>
			</div>
	
	
			<div class="card" style="width: 850px;">
	
				<div id="infoTable">
					<table class="storeInfo">
						<tr>
							<th scope="row"></th>
							<td colspan="8"></td>
						</tr>
						<tr>
							<th scope="row">영업시간</th>
							<td colspan="8">주중 12:00 ~ 23:00</td>
							<!--     <td style ="width : 150px;"></td>
				    <td style ="width : 150px;"></td> -->
						</tr>
						<tr>
							<th scope="row">휴무일</th>
							<td colspan="8">매주 일요일</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td colspan="8">서울특별시 서대문구 옥천동 70번지 1층</td>
						</tr>
						<tr>
							<th scope="row"></th>
							<td>
								<div id="btn2">지번</div>
							</td>
							<td colspan="5" id="stNum">
								<p class="stNump">행촌동 209-35</p>
							</td>
						</tr>
						<tr id="first">
							<th scope="row">메뉴</th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="second">
							<th scope="row"></th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="next">
							<th scope="row"></th>
							<td colspan="4">도가니탕</td>
							<td colspan="3">13000원</td>
							<td><img src="assets/img/skip.png" id="nextButton"></img></td>
						</tr>
						<tr id="four" style="display: none;">
							<th scope="row">메뉴</th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="five" style="display: none;">
							<th scope="row"></th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="prev" style="display: none;">
							<th scope="row"></th>
							<td colspan="4"></td>
							<td colspan="3"></td>
							<td><img src="assets/img/prev.png" id="prevButton"></img></td>
						</tr>
						<tr>
							<th scope="row">전화번호</th>
							<td colspan="8">010-0000-0000</td>
						</tr>
	
						<tr>
							<th scope="row">미디어</th>
							<td colspan="8"><img src="assets/img/youtube logo.png" alt=""
								id="mediaImage" /> 성시경 먹을텐데</td>
						</tr>
	
						<tr class="hidden" id="last">
							<th scope="row"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
	
					</table>
	
					<table class="storeMap">
						<tr>
							<th scope="row"></th>
							<td colspan="8">
								<div class="container">
									<div id="map"></div>
								</div>
							</td>
						</tr>
	
	
						<!-- <tr>
							<th scope="row"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr> -->
	
					</table>
	
	
	
				</div>
	
			</div>
	
	
		</section>
	
	
	
	
		<!-- Review Section -->
		<section class="container" style="max-width: 850px;">
			<h3>미정 리뷰</h3>
	
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<h5>김철수</h5>
					</div>
					<div class="col-9 text-end">
						<p>2024-09-29 23:27:05</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
					
						
				</div>
	
			</div>
	
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<h5>김철수</h5>
					</div>
					<div class="col-9 text-end">
						<p>2024-09-29 23:27:05</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
					
				</div>
	
			</div>
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<h5>김철수</h5>
					</div>
					<div class="col-9 text-end">
						<p>2024-09-29 23:27:05</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
				</div>
	
			</div>
					<button type="button" class="btn btn-danger" id = "plusButton" onclick="plusReview();" style="background-color: #ff7f00;">더보기</button>
		</section>
		
		
	
	</body>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script>
	
	/*   window.initMap = function () {
		   
		   const detailMap = new google.maps.Map(document.getElementById("detailMap"), {
		    center: { lat: 37.56992, lng: 126.9620 },
		    zoom: 15,
		   });
		  
		  const locations = [
			    { name: "대성집 도가니탕", lat: 37.56992, lng: 126.9620 }
			  ];
		  
		
		};   */
	
		   var map; // 전역변수로 만들어둬야함
		   
		   function initMap() {
			   var place = { // 경도 위도 설정
			     lat: 37.56993,
			     lng: 126.9620
			   };
			   var map = new google.maps.Map(document.getElementById('map'), {
			     zoom: 16,
			     center: place, // 정해준 경도,위도가 가운데로 갈 수 있게
			     scrollwheel: true // 우리가 쓴 zoom이랑 같은데 스크롤 기능 활성화
			   });
			   
			   
			   var myIcon = new google.maps.MarkerImage("assets/img/miJeongMarker.png", null, null, null, new google.maps.Size(40,50));
	
			   var marker = new google.maps.Marker({ // 마커 재정의
				     position: place,
				     map: map,
				     icon: myIcon,
				    
				   }); 
				   
			
		   }
		   
		   
		   
		   
		
		  
	$(document).ready(function () {
	    $(".slider").slick({
	    	  centerMode: true,
	    	  centerPadding: '60px',
	    	  slidesToShow: 3,
	    	  responsive: [
	    	    {
	    	      breakpoint: 768,
	    	      settings: {
	    	        arrows: true,
	    	        centerMode: true,
	    	        centerPadding: '60px',
	    	        slidesToShow: 3,
	    	        prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
	    	      }
	    	    },
	    	    {
	    	      breakpoint: 480,
	    	      settings: {
	    	        arrows: true,
	    	        centerMode: true,
	    	        centerPadding: '60px',
	    	        slidesToShow: 1,
	    	        nextArrow : "<button type='button' class='slick-next'>Next</button>",
	    	      }
	    	    }
	    	  ]
	    	});
	  });
	
	
	  
			$(function(){
				$("#nextButton").click(function(){
					//사용하고자 하는 함수
					nextMenu();
					
				});
				
				$("#prevButton").click(function(){
					//사용하고자 하는 함수
					prevMenu();
					
				});
				
			});	
	
			function nextMenu(){
				$('#first').attr('style', "display:none;");
				$('#second').attr('style', "display:none;");
				$('#next').attr('style', "display:none;");
				$('#four').attr('style', "display:'';");
				$('#five').attr('style', "display:'';");
				$('#prev').attr('style', "display:'';");
			}  
		
			function prevMenu(){
				$('#first').attr('style', "display:'';");
				$('#second').attr('style', "display:'';");
				$('#next').attr('style', "display:'';");
				$('#four').attr('style', "display:none;");
				$('#five').attr('style', "display:none;");
				$('#prev').attr('style', "display:none;");
			}  
			
				$('#stNum').attr('style', "text-align:start;"); 
				
				
		     
			
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
	</html>