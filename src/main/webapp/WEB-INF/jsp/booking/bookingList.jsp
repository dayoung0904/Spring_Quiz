<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- AJAX를 사용하려면 반드시 slim 버전이 아닌 jquery 원본 필요 -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- 스타일 시트 -->
<link rel="stylesheet" type="text/css" href="/css/booking/style.css">
</head>
<body>
	<div id="wrap" class="container">
    	<header class="bg-light d-flex justify-content-center align-items-center">
        	<div class="display-4">통나무 팬션</div>
        </header>
        <nav>
	        <ul class="nav nav-fill">
	        	<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">팬션소개</a></li>
	        	<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">객실보기</a></li>
	        	<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">예약안내</a></li>
	        	<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">커뮤니티</a></li>
	        </ul>
       	</nav>
        <section>
        	<div class="container">
	        	<span class="text-center"><h1>예약 목록 보기</h1></span>
	        	<table class="table text-center">
	        		<thead>
	        			<tr>
	        				<th>이름</th>
	        				<th>예약날짜</th>
	        				<th>숙박일수</th>
	        				<th>숙박인원</th>
	        				<th>전화번호</th>
	        				<th>예약상태</th>
	        				<th></th>
	        			</tr>
	        		</thead>
	        		<tbody>
	        		<c:forEach items="${bookings}" var="booking">
	        			<tr>
	        				<td>${booking.name}</td>
	        				<td>${booking.date}</td>
	        				<td>${booking.day}</td>
	        				<td>${booking.headcount}</td>
	        				<td>${booking.phoneNumber}</td>
	        				<td>${booking.state}</td>
	        				<td></td>
	        			</tr>
	        		</c:forEach>
	        		</tbody>
	        	</table>
	        </div>
        </section>
        <footer class="d-flex align-items-center pl-3">
        	<div class="address">
        		제주특별자치도 제주시 애월읍<br>
        		사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목<br>
        		Copyright 2025 tongnamu. All right reserved.
        	</div>
        </footer>
</body>
</html>