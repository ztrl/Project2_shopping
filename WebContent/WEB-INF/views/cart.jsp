<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">			
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>		
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>	
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
		<style>
			/* 글꼴 */
			@font-face {
				font-family: 'NanumBarunGothic';
				font-style: normal;
				font-weight: 400;
				src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
				src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
			}
			
			@font-face {
				font-family: 'NanumBarunGothic';
				font-style: normal;
				font-weight: 700;
				src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot');
				src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.ttf') format('truetype')
			}
			
			@font-face {
				font-family: 'NanumBarunGothic';
				font-style: normal;
				font-weight: 300;
				src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot');
				src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.ttf') format('truetype');
			}
			
			.nanumbarungothic * {
				font-family: 'NanumBarunGothic', sans-serif;
			}
			
			* {
				padding: 0px;
				margin: 0px;
				/*border: 1px solid black;*/
			}
			
			img {
				display: block;
				margin: 0px auto;
				width : 150px;
				height : 250px;
			}

			hr {
	            height: 1px;
	            background-color: black;
	         }
	         
	         .card {
	         	border: none;
	         }
		</style>
	</head>
	<body>
		
		<div class="jumbotron text-center jumbotron-fluid border">
		<div class="container mx-auto my-0 ">
			<h1 class="text-dark grey" style="font-size:80px">MY 전자</h1>		
			</div>
		</div>
		<hr/>
			
		<div id="cart" class="container-fluid" style="width:1440px">		
			<div class="row">		
							
			<div class="card px-0 d-flex flex-column col-sm-2" style="background-color: #F5F5F5">
			  <h3 class="card-header bg-dark text-white text-center">Cart</h3>
			  <div class="card-body">
			    <h2 class="card-title">ID님</h2>
			    <div class="row">
			    <h5 class="col-2"><span class="align-self-start badge badge-primary">VIP</span></h5>
				<h5 class="col-2"><span class="align-self-start badge badge-warning">100,000P</span></h5>
			 	</div>
			 	<div class="card-body">
			 	<div class="row d-flex flex-column text-align:center">
			 	<button type="button" class="btn btn-secondary border-dark my-1" onclick="window.location.href='userInfo'">마이페이지</button>
			 	<button type="button" class="btn btn-secondary border-dark my-1" onclick="window.location.href='orderList'">최근 주문 내역</button>
			 	<button type="button" class="btn btn-secondary border-dark my-1" onclick="window.location.href='boardList'">관심상품</button>
			 	<button type="button" class="btn btn-secondary border-dark my-1" onclick="window.location.href='boardList'">내가 쓴 리뷰</button>
			 	</div>
			 	</div>
			  </div>
			  			
			   <div class="card-footer d-flex justify-content-between">
			    <a href="window.location.href='home'">Home</a>
			    <a href="#">맨 위로</a>
			  </div>
			 </div>	
			
				<div id="cartProduct" class="col-sm-7 container-fluid">
					<div class="card container fluid pt-3" style="background-color: #F5F5F5">
						<div class="row">
							<div class="col-sm-9"><input type="radio" name="selectAll"/> 전체선택 </div>
						 	<div class="col-sm-3 d-flex justify-content-end">
						  	<button type="button" class="btn btn-outline-dark btn-sm" style="border-radius:20px">선택 삭제</button>										  
							</div>	
						</div>						
					</div>
					<hr/>
					<div class="card container-fluid">
						<div class="row">
							<div class="col-sm-9"><input type="radio" name="select"/></div>
							<div class="col-sm-3 d-flex justify-content-end">
							<button type="button" class="btn btn-outline-dark btn-sm" style='font-size:20px' >
							<i class='far fa-trash-alt'></i>
							</button></div>					
						</div>				
					</div>					
					<div class="card container-fluid py-3">
						<div class="row">
							<div class="col-sm-3"><img src="/Project2_shopping/resources/images/refrigerator1.png"/></div>							
							<div class="col-sm-4 container-fluid d-flex flex-column"> 								
								<div class="status" style="color:DodgerBlue"><h6>설치상품</h6></div><br/>
								<div class="name"><h3>BESPOKE 냉장고 4도어</h3></div>
								<div class="name"><h3>프리스탠딩 875 L</h3></div><br/>
								<div class="color"><h5>새틴 베이지+새틴 화이트</h5></div>								
							</div>
							
							<div class="col-sm-2"> 
							 <div class="btn-group btn-group-sm">
							    <button type="button" class="btn btn-outline-dark btn-sm">-</button>
							   	<button type="button" class="btn btn-outline-dark btn-sm disabled">1</button>
							    <button type="button" class="btn btn-outline-dark btn-sm">+</button>
							 </div>
							</div>
							
							<div class="col-sm-3 card container-fluid d-flex flex-column py-3">
								<div class="text-right text-muted" style="text-decoration:line-through"><h5>3,140,000원</h5></div>
								<div class="text-right"><h4>2,135,000원</h4></div>
							</div> 
						</div>
					</div>
					
					<div class="card container-fluid">
						<div class="row">
							<div class="col-sm-8 text-left text-muted"><h6>*장바구니 상품은 30일간 보관됩니다.</h6></div>
							<div class="col-sm-4 d-flex justify-content-end">
							<button type="button" class="btn btn-outline-dark btn-sm" style="border-radius:25px">추가</button>				
							</div>
						</div>
					</div>
					<hr/>
					
					<div class="card container-fluid">
						<div class="row">
							<div class="col-sm-9"><input type="radio" name="select"/></div>
							<div class="col-sm-3 d-flex justify-content-end">
							<button type="button" class="btn btn-outline-dark btn-sm" style='font-size:20px' >
							<i class='far fa-trash-alt'></i>
							</button></div>					
						</div>				
					</div>		
					<div class="card container-fluid py-3">
						<div class="row">
							<div class="col-sm-3"><img src="/Project2_shopping/resources/images/refrigerator1.png"/></div>							
							<div class="col-sm-4 container-fluid d-flex flex-column"> 								
								<div class="status" style="color:DodgerBlue"><h6>설치상품</h6></div><br/>
								<div class="name"><h3>BESPOKE 냉장고 4도어</h3></div>
								<div class="name"><h3>프리스탠딩 875 L</h3></div><br/>
								<div class="color"><h5>새틴 베이지+새틴 화이트</h5></div>								
							</div>
							
							<div class="col-sm-2"> 
							 <div class="btn-group btn-group-sm">
							    <button type="button" class="btn btn-outline-dark btn-sm">-</button>
							   	<button type="button" class="btn btn-outline-dark btn-sm disabled">1</button>
							    <button type="button" class="btn btn-outline-dark btn-sm">+</button>
							 </div>
							</div>
							
							<div class="col-sm-3 card container-fluid d-flex flex-column py-3">
								<div class="text-right text-muted" style="text-decoration:line-through"><h5>3,140,000원</h5></div>
								<div class="text-right"><h4>2,135,000원</h4></div>
							</div> 
						</div>
					</div>
					
					<div class="card container-fluid">
						<div class="row">
							<div class="col-sm-8 text-left text-muted"><h6>*장바구니 상품은 30일간 보관됩니다.</h6></div>
							<div class="col-sm-4 d-flex justify-content-end">
							<button type="button" class="btn btn-outline-dark btn-sm" style="border-radius:25px">추가</button>				
							</div>
						</div>
					</div>
					<hr/>
					
					<div class="card container-fluid">
						<div class="row">
						
							<div class="col-sm-9"><input type="radio" name="select"/></div>
							<div class="col-sm-3 d-flex justify-content-end">
							<button type="button" class="btn btn-outline-dark btn-sm" style='font-size:20px' >
							<i class='far fa-trash-alt'></i>
							</button></div>					
						</div>				
					</div>		
						<div class="card container-fluid py-3">
						<div class="row">
							<div class="col-sm-3"><img src="/Project2_shopping/resources/images/refrigerator1.png"/></div>							
							<div class="col-sm-4 container-fluid d-flex flex-column"> 							
								<div class="status" style="color:DodgerBlue"><h6>설치상품</h6></div><br/>
								<div class="name"><h3>BESPOKE 냉장고 4도어</h3></div>
								<div class="name"><h3>프리스탠딩 875 L</h3></div><br/>
								<div class="color"><h5>새틴 베이지+새틴 화이트</h5></div>								
							</div>
							
							<div class="col-sm-2"> 
							 <div class="btn-group btn-group-sm">
							    <button type="button" class="btn btn-outline-dark btn-sm">-</button>
							   	<button type="button" class="btn btn-outline-dark btn-sm disabled">1</button>
							    <button type="button" class="btn btn-outline-dark btn-sm">+</button>
							 </div>
							</div>
							
							<div class="col-sm-3 card container-fluid d-flex flex-column py-3">
								<div class="text-right text-muted" style="text-decoration:line-through"><h5>3,140,000원</h5></div>
								<div class="text-right"><h4>2,135,000원</h4></div>
							</div> 
						</div>
					</div>
					
					<div class="card container-fluid">
						<div class="row">
							<div class="col-sm-8 text-left text-muted"><h6>*장바구니 상품은 30일간 보관됩니다.</h6></div>
							<div class="col-sm-4 d-flex justify-content-end">
							<button type="button" class="btn btn-outline-dark btn-sm" style="border-radius:25px">추가</button>				
							</div>
						</div>
					</div>
					<hr/>					
				
				</div>
				
				<div id="cartPrice" class="col-sm-3 container-fluid">
					<div class="card container fluid d-flex flex-column py-4" style="background-color: #F5F5F5; border:dark;">													
						 	<h5>배송지를 등록해주세요.</h5>
						 	<br/>
						  	<button type="button" class="btn btn-dark" style="border-radius:20px">배송지 등록</button>										  						
					</div>						
					
					<div class="card container fluid d-flex flex-column py-5">
						<div class="row justify-content-between">
							<div class="d-flex mx-3"><h5>전체 상품</h5></div>
							<div class="d-flex mx-3"><h5>0개</h5></div>
						</div>
						<div class="row justify-content-between">
						 	<div class="d-flex mx-3"><h5>주문 금액</h5></div>
							<div class="d-flex mx-3"><h5>0원</h5></div>
							</div>
							<div class="row justify-content-between">
							<div class="d-flex mx-3"><h5>할인 금액</h5></div>
							<div class="d-flex mx-3" style="color:DodgerBlue"><h5>0원</h5></div>	
							</div>
							<br/>
							<div class="row justify-content-between">
							<div class="d-flex mx-3"><h4>결제 예정 금액</h4></div>
							<div class="d-flex mx-3"><h4>0원</h4></div>	
							</div>
						</div>			
						
						<div class="card container fluid d-flex flex-column py-3">													 	
							<button type="button" class="btn btn-warning border-dark" style="border-radius:20px" onclick="window.location.href='order'">주문하기</button>										  						
						</div>	
									
					</div>												
				</div>
			</div>				
	</body>
</html>