<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- AJAX를 사용하려면 반드시 slim 버전이 아닌 jquery 원본 필요 -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가하기</h1>
		<div class="form-group">
			<label for="name"><b>제목</b></label>
			<input type="text" id="name" name="name" class="form-control col-12">
		</div> 
		<div class="form-group">
			<label for="url"><b>주소</b></label>
			<input type="text" id="url" name="url" class="form-control col-12">
		</div> 
		<input type="button" id="addBtn" class="btn btn-success col-12" value="추가">
	</div>
	
<script>
	$(document).ready(function(){
		$('#addBtn').on('click', function(){
			//alert("버튼!");
			
			// validation check
			let name = $('#name').val().trim();
			if(name == ""){
				alert("제목을 입력하세요");
				return;
			}
			let url = $('#url').val().trim();
			if(url == ""){
				alert("주소를 입력하세요");
				return;
			}
			
			/* if(url.startWith("http") == false){
				alert("프로토콜을 입력하세요");
				return;
			} */
			
			console.log(name);
			console.log(url);
			$.ajax({
				// request
				type:"POST"
				,url:"/lesson06/quiz01/add-bookmark"
				,data:{"name":name, "url":url}
			
				// response
				, success:function(data){
					alert(data);
				}
				, complete:function(data){
					alert(data);
				}
				, error:function(request, status, error){
					alert(request);
					alert(status);
					alert(error);
				}
			})
		})
	})
</script>
</body>
</html>