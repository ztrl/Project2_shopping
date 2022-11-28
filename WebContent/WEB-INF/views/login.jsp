<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 Login Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<!--아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

<!-- Web Fonts  -->		
<link id="googleFonts" href="./Login_files/css" rel="stylesheet" type="text/css">

* {
	
	background-color: #F0F0F0;
}
.nanumbarungothic * {
	font-family: 'NanumBarunGothic', sans-serif;
}

#bg-gradient-primary {
	background-color: #F0F0F0;
}
/* https://www.w3schools.com/cssref/tryit.php?filename=trycss3_justify-content */
#cardbox {
	border: 1px solid black;
}

.container {
	width: 500px;
}

form{
	border: none;
}

</style>



</head>

<body >
	<div class="jumbotron text-center jumbotron-fluid border" style="background-color: #F0F0F0">
		<div class="container bg-white text-dark mx-auto my-0 " style="background-color: #F0F0F0">
			<h1>컴퓨터 쇼핑몰</h1>
		</div>
	</div>



	<div id="bg-gradient-primary">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-10 col-lg-12 col-md-9">
					<div id="cardbox" class="card">


						<!--card body------------------------------------------------------  -->
						<div class="card-body col-sm-12 col-md-12">



							<form>
								<div id="userId" class="form-group">
									<input type="email" class="form-control form-control-user" id="inputEmail1" placeholder="Email@naver.com">
								</div>

								<div id="userPassword" class="form-group">
									<input type="password" class="form-control form-control-password" id="inputEmail2" placeholder="Password...">
								</div>

								<div class="form-group">
									<input type="checkbox" class="checkbox" id="customcheck" placeholder="Password..." id="check"> <label class="control-laber" for="check"> ID/PWD 저장 </label>

								</div>

								<a class="btn btn-primary btn-user btn-block"> Login </a>

								<hr />

								<a href="" class="btn btn-danger btn-user btn-block"> <i class="fab fa-google fa-fw "></i> Google

								</a> <a href="" class="btn btn-primary btn-user btn-block"> <i class="fab fa-facebook-f fa-fw"></i> FaceBook
								</a>

								<hr />

								<div id="userinfo">
									<div class="text-left">
										<a href="http://localhost:8080/Project2_shopping/html/find_password.html"> Find Password </a>
									</div>

									<div class="text-left">
										<a href="http://localhost:8080/Project2_shopping/html/joinform_ej.html"> Join </a>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>



</html>