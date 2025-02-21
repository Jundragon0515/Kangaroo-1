<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
   <!-- Mobile Specific Meta -->
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <!-- Favicon-->
<link rel="shortcut icon" href="../resources/img/logo.png">
   <!-- Author Meta -->
   <meta name="author" content="CodePixar">
   <!-- Meta Description -->
   <meta name="description" content="">
   <!-- Meta Keyword -->
   <meta name="keywords" content="">
   <!-- meta character set -->
   <meta charset="UTF-8">
   <!-- Site Title -->
   <title>Karma Shop</title>
   <!--
         CSS
         ============================================= -->
   <link rel="stylesheet" href="../resources/css/linearicons.css">
   <link rel="stylesheet" href="../resources/css/font-awesome.min.css">
   <link rel="stylesheet" href="../resources/css/themify-icons.css">
   <link rel="stylesheet" href="../resources/css/bootstrap.css">
   <link rel="stylesheet" href="../resources/css/owl.carousel.css">
   <link rel="stylesheet" href="../resources/css/nice-select.css">
   <link rel="stylesheet" href="../resources/css/nouislider.min.css">
   <link rel="stylesheet" href="../resources/css/ion.rangeSlider.css" />
   <link rel="stylesheet" href="../resources/css/ion.rangeSlider.skinFlat.css" />
   <link rel="stylesheet" href="../resources/css/main.css">
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <link rel="icon" type="image/png" sizes="32x32"
	href="/favicon-32x32.png">
<style>
    .category,.dropdown-menu{
        background-color: #ffba00;
        color: white;
    } /*카테고리 색 주황색*/
    
    /*여기부터*/
    [type="radio"]:checked,
[type="radio"]:not(:checked) {
    position: absolute;
    left: -9999px;
}
[type="radio"]:checked + label,
[type="radio"]:not(:checked) + label
{
    position: relative;
    padding-left: 20px;
    cursor: pointer;
    line-height: 20px;
    display: inline-block;
    color: #666;
}
[type="radio"]:checked + label:before,
[type="radio"]:not(:checked) + label:before {
    content: '';
    position: absolute;
    left: 0;
    top: 0;
    width: 18px;
    height: 18px;
    border: 1px solid #ddd;
    border-radius: 100%;
    background: #fff;
}
[type="radio"]:checked + label:after,
[type="radio"]:not(:checked) + label:after {
    content: '';
    width: 10px;
    height: 10px;
    background: #ffba00;
    position: absolute;
    top: 4px;
    left: 4px;
    border-radius: 100%;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
}
[type="radio"]:not(:checked) + label:after {
    opacity: 0;
    -webkit-transform: scale(0);
    transform: scale(0);
}
[type="radio"]:checked + label:after {
    opacity: 1;
    -webkit-transform: scale(1);
    transform: scale(1);
}/*여기까지 라디오 버튼 색*/ 
    #titleName{
        position: relative;
        top: 85px;
    }
    [type="text"]{
    	background-color:#fafff2;
    	color:#ffba00;
    	border : 1px solid #ffebb3;
    }
    [type="text"]:hover{
    	cursor: pointer;
    }
    #titleImg{
        border: 5px solid #ffebb3;
        border-radius: 30px 30px 30px 30px;
        position: relative;
        top: 85px;
        width:540px;
        height: 502px;
    }
    #middle {
    	width: 510px;
    	height: 473px;
   	 	border-radius: 30px 30px 30px 30px;
   	 	margin: 10px 10px 10px 10px;
	}

    #contents{
        border: 1px solid black;
        width: 450px;
        height: 300px;
    }
    #writtingContents{
        position: relative;
        top: 85px;
    }
    #writting{
    	border-radius:30px 30px 30px 30px;
        position: relative;
        top: 85px;
        padding-left: 6px;
        margin: auto;
        width: 540px;
        height: 323px;
        resize: none;
        overflow:auto;
        background:#fafff2;
        border :5px solid #ffebb3;
    }
    #writting:hover{
       cursor:pointer;
       color:#ffba00;
    }

    .input{
        color: #ffba00;
    }
    .product_image_area{
        position: relative;
        bottom:70px;
    }
    .name{
        text-align: center;
        font-size: 50px;
        color: #ffba00;
    }
    .txc-textbox{
       width:100px;
       height:50px;
    }
    .nice-select{
    	position:relative;
        padding-left: 0px;
    	padding-right: 20px;
    	color : white;
    	background-color: #ffce47;
    	border : 1px solid ffce47;
    	
    }
    .nice-select:hover{
    	background-color:#ffd45e;
    }
    .nice-select .list{
    	color: #ffba00;
    	background-color : white;
    	overflow-y:scroll;
    	height:200px;
    }
    #preview{
    	border: 3px solid #ffebb3;
    	border-radius: 10px 10px 10px 10px;
    	width: 460px;
    	height: 376px;
    	overflow: auto;
    	position: relative;
    	bottom: 19px;
	}  
    /* 상세이미지 크기 */
    .preview-box{    	
    	width: 200px;
    	height: 100px;
    	display: inline;
    }
    #detailImg {
    	position:relative;
    	bottom:21px;
    	background-color: #ffce47;
    	color: white;
    	border-radius: 3px 3px 3px 3px;
    	font-size: 29px;
   	 	height: 40px;
    	padding-top: 10px;
	}
    #detailImg:hover {
    	background-color:#ffd45e;
    	color:white;
		cursor: pointer;
	}
	#register{
		position:relative;
		bottom:10px;
	}
	#sel,#sel1,#sel2{
		float:left;
	}
	.trade{
		position:relative;
		top:10px;
	}

	#image:hover{
		cursor: pointer;
	}
	#pay{
		width:50px;
		height:25px;
		color: black;
		padding-left: 5px;
	}
	.nav_b {
		border: 0px;
		background: 000000;
		width: 100%;
	}

   .nav_b:hover {
      cursor: pointer;
   }
	.nav_ul * {
		text-align: center;
	}
	#sang{
		position:relative;
		bottom:20px;
	}
	.middleName {
    	color: darkgoldenrod;
    	font-size: 18px;
	}
	.thumbnail{
		width: 100px;
    	height: 100px;
	}
	.footerTitle {
	font-size: 20px;
	text-align: center;
	font-color: white;
}

</style>  
<script>
	

</script>
</head>
<body>

   <!-- Start Header Area -->
<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display logo_h -->
					<a class="navbar-brand logo_h" href="/"><img
						src="../resources/img/logo.png" width="60px" alt="">
						Kangaroo</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<!-- 							<li class="nav-item active"><a class="nav-link" href="/">Home</a></li> -->
									<li class="nav-item"><a class="nav-link" href="/trade">중고
											직거래</a></li>
									<li class="nav-item"><a class="nav-link" href="/trade_safe">중고
											안전거래</a></li>
									<li class="nav-item"><a class="nav-link" href="/auction">중고
											경매</a></li>
							<li class="nav-item "><a class="nav-link" href="notice_main">공지사항</a></li>
							<c:choose>
								<c:when test="${logintype=='admin'}">
									<li class="nav-item "><a class="nav-link" href="/admin">관리자페이지</a></li>
									<li class="nav-item "><a class="nav-link" href="/logout">로그아웃</a></li>
								</c:when>
								<c:when test="${logintype=='naver'}">
									<li class="nav-item submenu dropdown"><a href="#"
										class="nav-link dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false"><img
											src="../resources/img/account.png" width="35px"></a>
										<ul class="dropdown-menu nav_ul">
											<li class="nav-item "><a class="nav-link" href="/goCart">찜목록</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/goMyPage">마이페이지</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/toPoint">포인트충전</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/toPoint_exc">포인트환급</a></li>
											<li class="nav-item "><input type="button"
												class="nav-link nav_b" id="logout_na" value="로그아웃"></li>
										</ul></li>
								</c:when>
								<c:when test="${logintype=='kakao'}">
									<li class="nav-item submenu dropdown"><a href="#"
										class="nav-link dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false"><img
											src="../resources/img/account.png" width="40px"></a>
										<ul class="dropdown-menu nav_ul">
											<li class="nav-item "><a class="nav-link" href="/goCart">찜목록</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/goMyPage">마이페이지</a></li>
												<li class="nav-item "><a class="nav-link"
												href="/toPoint">포인트충전</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/toPoint_exc">포인트환급</a></li>
											<li class="nav-item "><input type="button"
												class="nav-link nav_b" id="logout_ka" value="로그아웃"></li>
										</ul></li>
								</c:when>
								<c:when test="${logintype=='email'}">
									<li class="nav-item submenu dropdown"><a href="#"
										class="nav-link dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false"><img
											src="../resources/img/account.png" width="40px"></a>
										<ul class="dropdown-menu nav_ul">
											<li class="nav-item "><a class="nav-link" href="/goCart">찜목록</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/goMyPage">마이페이지</a></li>
											<li class="nav-item "><a class="nav-link"
												href="/toPoint">포인트충전</a></li>
												<li class="nav-item "><a class="nav-link"
												href="/toPoint_exc">포인트환급</a></li>
											<li class="nav-item "><a class="nav-link" href="/logout">로그아웃</a></li>
										</ul></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item "><a class="nav-link"
										href="/login_main">로그인</a></li>
									<li class="nav-item "><a class="nav-link" href="/insert">회원가입</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- End Header Area -->

      <!-- Start Banner Area -->
   <section class="banner-area organic-breadcrumb">
   <div class="container">
      <div
         class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
         <div class="col-first">
            <h1>중고물품 글쓰기</h1>
            <nav class="d-flex align-items-center"> <a href="/">메인페이지<span

               class="lnr lnr-arrow-right"></span></a> <a href="/trade">중고거래
               <span class="lnr lnr-arrow-right"></span>
            </a> <a href="#">중고거래 물품 등록<span class="lnr "></span></a></nav>
         </div>
      </div>
   </div>
   </section>
	<form action="goodsRegister" method="post" enctype="multipart/form-data" id="send">
	<div class="product_image_area">
		<div class="container">
		    <div class="name">중고 물품등록</div>
			<div class="row s_product_inner">
				<div class="col-lg-6 col-md-12 col-sm-12">
                    <div id="titleName" class="middleName">타이틀 이미지</div>
 				
                    	<input type="hidden" name="title_img" id="imgTitle">
				        <div id="titleImg" contenteditable="false"></div>
				
						<div id="writtingContents" class="middleName">물품 설명</div>
							
						<textarea id="writting" placeholder="물품설명을 해주세요." name="contents"></textarea>	
				</div>			
				<div class="col-lg-5 offset-lg-1 col-md-12 col-sm-12">
					<div class="s_product_text">
						<ul class="list">
                        <br>                        
						    <li><a><span class="middleName">물품제목</span></a><input type="text" class="form-control goodsContents" id="goodsTitle" name="title" placeholder="물품제목을 입력하세요."></li><br>

							<li><a><span class="middleName">물품가격</span></a><input type="text" class="form-control goodsContents" id="goodsPrice"  onchange="getNumber(this);" onkeyup="getNumber(this);" name="price" placeholder="물품가격을 입력하세요."></li><br>

							<li><a><span class="middleName">핸드폰번호</span></a><input type="text" phoneOnly  class="form-control goodsContents" id="phone" name="phone" placeholder="-없이 핸드폰 번호를 입력해주세요." onkeydown="javascript: return event.keyCode == 69 ? false : true"></li><br>
							
				<div id="sel">		
					<div id="sel1">					
							<li>
							<div class="middleName">카테고리</div>
							<div class="txc-textbox">
								<select id="category" name="category">
 									 <option value="미술품">미술품</option>
  									 <option value="도서">도서</option>
 									 <option value="가전제품">가전제품</option>
  									 <option value="취미/수집">취미/수집</option>
  									 <option value="생활용품">생활용품</option>
  									 <option value="스포츠/레저">스포츠/레저</option>
  									 <option value="기타">기타</option>
								</select>
							</div>
							</li>
					</div>		
					
					<div id="sel2">	
							<li>
								<div class="middleName">거래유형</div>
								<c:choose>
								<c:when test="${type=='ggic'}">
                                <input type="radio" id="test1" class="trade" name="trade_type" value="직거래" checked>
                                <label for="test1" class="trade">직거래</label>
                                <input type="radio" id="test2" class="trade" name="trade_type" value="안전거래">
                                <label for="test2" class="trade">안전거래</label>
                                </c:when>
                                <c:when test="${type=='an' }">
                                <input type="radio" id="test1" class="trade" name="trade_type" value="직거래">
                                <label for="test1" class="trade">직거래</label>
                                <input type="radio" id="test2" class="trade" name="trade_type" value="안전거래" checked>
                                <label for="test2" class="trade">안전거래</label>
                                </c:when>
                                </c:choose>
							</li>
					</div>		
				</div>
							<li>
								<div class="middleName">택배</div>
								<c:choose>
								<c:when test="${type=='ggic'}">								
                                <input type="radio" id="test3" class="delivery" name="delivery_type" value="선불" disabled="disabled">
                                <label for="test3" class="trade" id="payInside">선불(구매자 부담)</label>
                                <input type="radio" id="test4" class="delivery" name="delivery_type" value="착불" disabled="disabled">
                                <label for="test4" class="trade">착불(구매자 부담)</label>
                                <input type="radio" id="test5" class="delivery" name="delivery_type" value="무료배송" disabled="disabled">
                                <label for="test5" class="trade">무료(판매자 부담)</label>
                                </c:when>
                                <c:when test="${type=='an' }">
                                <input type="radio" id="test3" class="delivery" name="delivery_type" value="선불">
                                <label for="test3" class="trade" id="payInside">선불(구매자 부담)</label>
                                <input type="radio" id="test4" class="delivery" name="delivery_type" value="착불">
                                <label for="test4" class="trade">착불(구매자 부담)</label>
                                <input type="radio" id="test5" class="delivery" name="delivery_type" value="무료배송">
                                <label for="test5" class="trade">무료(판매자 부담)</label>
                                </c:when>
                                </c:choose>
							</li>
							<div id="mainImg" class="middleName">메인 이미지</div>
                            <input type="file" id="image" class="imgRegister1" accept=".jpg, .png"><br>
                         
				<div id="a"><br>		  
                          <div id="sang" class="middleName">상세 이미지</div>                                        
                       	 <!--  <input type="file" id="image1" class="imgRegister" accept=".gif, .jpg, .png">                       	 
                       	  <button type=button class="filePlus">+</button>
                       	  <div class="imgUploade" contenteditable="false"></div>  옆으로 상세 이미지 보여주게!!! 안됨... 
                       	  <input type="hidden" name="middle1_img" id="middle1"> -->


                           <div class="body">
                              <!-- 첨부 버튼 -->
                              <div id="attach">
                                 <label class="waves-effect waves-teal btn-flat"
                                    for="uploadInputBox" id="detailImg">파일선택</label> 
                                    <input id="uploadInputBox" accept=".jpg, .png"
                                    style="display: none" type="file" name="file" multiple
                                    class="z" /> <input type="hidden" name="middle1_img" id="d">
                              </div>

                              <!-- 미리보기 영역 -->

										<div id="preview" class="content col-md-12 col-sm-12">상세 이미지 최소1장부터 최대 10장까지 넣을 수 있습니다.</div>

										<!-- multipart 업로드시 영역 -->
									</div>
								</div>       
                          <div class="text-right">
								<button type="button" id="register" class="genric-btn primary radius">등록하기</button>								

				        </div>                 
						</ul>
						<br>		
                     <br>
               </div>
            </div>
         </div>
      </div>
   </div>

<br><br><br><br>

		<!-- start footer Area -->
		<footer class="footer-area section_gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="">
							<dl>
								<dt>
									<h6>(주) &nbsp;&nbsp;Kangaroo</h6>
								</dt>
								<dd>서울특별시 중구 남대문로 120 대일빌딩 3층 (04540)</dd>
								<dd>대표이사: 홍길동 사업자등록번호 : 815-81-00000</dd>
								<dd>Tel: 1599-0000 Fax: 02-894-0000</dd>
								<dd>E-mail: custimerservice@aaaa.co.kr</dd>
							</dl>
						</div>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4 footerTitle">
						<div class="single-footer-widget">
							<h6><span>현재 활성화된 경매수</span></h6>
							&emsp;&emsp; <br> <h6><span><fmt:formatNumber
									value="${auctionActiveCount }" pattern="#,###" /> 건</span></h6>
						</div>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4 footerTitle">
						<div class="single-footer-widget mail-chimp">
							<h6><span style="font-size=50px;">현재 총 거래 량</span></h6>
							&emsp;&emsp; <br> <h6><span><fmt:formatNumber
									value="${totalCount }" pattern="#,###" /> 건 </span></h6>
						</div>
					</div>
				</div>
				<!-- 저작권 -->
				<div
					class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
					<p class="footer-text m-0">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
						document.write(new Date().getFullYear());
					</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="/" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- End footer Area -->
   
	 <script> 
	 <c:choose>
		<c:when test="${logintype==null}">
		alert("로그인후 이용 가능합니다");
		$(location).attr("href", "/login_main");
		</c:when>
		</c:choose>
	 
		 $("#test1").on("click",function(){
	 		$("#test3").attr("checked",false);
	 		$("#test4").attr("checked",false);
	 		$("#test5").attr("checked",false);
	 		$("#test3").attr("disabled",true);
	 		$("#test4").attr("disabled",true);
	 		$("#test5").attr("disabled",true);
	 		$("#pay").remove();
	 		$("#collectible").remove();
	 		$("#free").remove();
	 	})	
	 
	 	$("#test2").on("click",function(){
	 		$("#test3").attr("disabled",false);
	 		$("#test4").attr("disabled",false);
	 		$("#test5").attr("disabled",false);
	 		$("#pay").remove();
	 		$("#collectible").remove();
	 		$("#free").remove();
	 	})
	 	$("#test3").on("click",function(){
	 		$("#pay").remove();
	 		$("#collectible").remove();
	 		$("#free").remove();
	 		$("#payInside").append('<input type="text" id="pay" value="2500" name="delivery_cost" disabled="disabled">');
	 		$("pay").attr("disabled",true);
	 	})
	 	$("#test4").on("click",function(){
	 		$("#pay").remove();
	 		$("#collectible").remove();
	 		$("#free").remove();
	 		$("#payInside").append("<input type='hidden' id='collectible'value='2500' name='delivery_cost'>");
	 	})
	 	$("#test5").on("click",function(){
	 		$("#sun").remove();
	 		$("#collectible").remove();
	 		$("#free").remove();
	 		$("#payInside").append("<input type='hidden' id='free' value='0' name='delivery_cost'>");
	 	})
	 	
	 	
        $("input:text[priceOnly]").on("keyup", function() {
             $(this).val(($(this).val().replace(/[^0-9]/g,"")));
      });
        $("input:text[phoneOnly]").on("keyup", function() {
             $(this).val($(this).val().replace(/[^0-9]/g,""));
      });
        $("input:text[acountOnly]").on("keyup", function() {
             $(this).val($(this).val().replace(/[^0-9]/g,""));
      });
        //핸드폰 가격 계좌 숫자만 입력받게하기

        $('#example .dropdown-menu li > a').bind('click', function (e) {
            var html = $(this).html();
            $('#example button.dropdown-toggle').html(html + ' <span class="caret"></span>');
        }); 
   
        $("#image").on("click",function(){
        	$("#middle").remove();
        	$("#imgTitle").val().remove();
        })

        $("#image").on("input",function(){
			var formData = new FormData();
			formData.append("formData",$(this)[0].files[0]);
			$.ajax({
				url:"imageUpdate",
				type:"post",
				processData:false,
				contentType:false,
				data:formData
			}).done(function(resp){
				$("#titleImg").append("<img src='/img/title/"+resp+"' id='middle'>");
				$("#imgTitle").val(resp);
			})
		})//메인 이미지 바로 띄우는 것
			
		//임의의 file object영역
        var files = {};
        var previewIndex = 0;
        // image preview 기능 구현
        // input = file object[]
        function addPreview(input) {   
            if (input[0].files) {
                //파일 선택이 여러개였을 시의 대응      
                if(input[0].files.length<11){
                for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                    var file = input[0].files[fileIndex];
                    if (validation(file.name))
                        continue;
             
                    var reader = new FileReader();
                    reader.onload = function(img) {               
           
                        //div id="preview" 내에 동적코드추가.
                        //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                        var imgNum = ++previewIndex;                                             
                        $("#preview")
                                .append(
                                        "<div class=\"preview-box max"+imgNum+"\" value=\"" + imgNum +"\">"
                                                + "<img name='middle"+imgNum+"_img' class=\"thumbnail\" src=\"" + img.target.result + "\"\/>"       
                                              //  + file.name
                                                + "<a href=\"#\" value=\""
                                                + imgNum
                                                + "\" onclick=\"deletePreview(this)\">"
                                                + "삭제" + "</a>" + "</div>");
                                                                      
                        files[imgNum] = file;
                       
                    };
                    reader.readAsDataURL(file);
                }
                $(".preview-box").remove();
            }else{
               alert("상세 이미지는 10개 까지 됩니다.");
            }
                
            } else{
                alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
            }
        }
        //preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제
        function deletePreview(obj) {
            var imgNum = obj.attributes['value'].value;
            delete files[imgNum];
            $("#preview .preview-box[value=" + imgNum + "]").remove();
            resizeHeight();
        }
 
        //client-side validation
        //always server-side validation required
        function validation(fileName) {
            fileName = fileName + "";
            var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
            var fileNameExtension = fileName.toLowerCase().substring(
                    fileNameExtensionIndex, fileName.length);
            if (!((fileNameExtension === 'jpg')
                    || (fileNameExtension === 'gif') || (fileNameExtension === 'png'))) {
                alert('jpg, gif, png 확장자만 업로드 가능합니다.');
                return true;
            } else {
                return false;
            }
        }
 
        $(document).ready(function() {
            //submit 등록. 실제로 submit type은 아니다.
            $('.submit a').on('click',function() {                        
                var form = $('#uploadForm')[0];
                var formData = new FormData(form);
    
                for (var index = 0; index < Object.keys(files).length; index++) {
                    //formData 공간에 files라는 이름으로 파일을 추가한다.
                    //동일명으로 계속 추가할 수 있다.
                    formData.append('files',files[index]);
                }
 
                //ajax 통신으로 multipart form을 전송한다.
                $.ajax({
                    type : 'POST',
                    enctype : 'multipart/form-data',
                    processData : false,
                    contentType : false,
                    cache : false,
                    timeout : 600000,
                    url : '/imageupload',
                    dataType : 'JSON',
                    data : formData,
                    success : function(result) {
                        //이 부분을 수정해서 다양한 행동을 할 수 있으며,
                        //여기서는 데이터를 전송받았다면 순수하게 OK 만을 보내기로 하였다.
                        //-1 = 잘못된 확장자 업로드, -2 = 용량초과, 그외 = 성공(1)
                        if (result === -1) {
                            alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
                            // 이후 동작 ...
                        } else if (result === -2) {
                            alert('파일이 10MB를 초과하였습니다.');
                            // 이후 동작 ...
                        } else {
                            alert('이미지 업로드 성공');
                            // 이후 동작 ...
                        }
                    }
                    //전송실패에대한 핸들링은 고려하지 않음
                });
            });
            // <input type=file> 태그 기능 구현
            $('#attach input[type=file]').change(function() {
                addPreview($(this)); //preview form 추가하기
            });
        });
      
          function autoHypenPhone(str){
            str = str.replace(/[^0-9]/g, '');
            var tmp = '';
            if (str.length < 4) {
               return str;
            } else if (str.length < 7) {
               tmp += str.substr(0, 3);
               tmp += '-';
               tmp += str.substr(3);
               return tmp;
            } else if (str.length < 11) {
               tmp += str.substr(0, 3);
               tmp += '-';
               tmp += str.substr(3, 3);
               tmp += '-';
               tmp += str.substr(6);
               return tmp;
            } else {
               tmp += str.substr(0, 3);
               tmp += '-';
               tmp += str.substr(3, 4);
               tmp += '-';
               tmp += str.substr(7);
               return tmp;
            }
            return str;
         }
        var cellPhone = document.getElementById('phone');
       cellPhone.onkeyup = function(event){
           event = event || window.event;
           var _val = this.value.trim();
           this.value = autoHypenPhone(_val) ;
       }



			$("#register").on("click", function() {
				var trade = document.getElementById("test1");
				var deli = document.getElementsByName("delivery_type");
				if ($("#writting").val() == "") {
					alert("물품 설명을 입력해주세요.");
				} else if ($("#goodsTitle").val() == "") {
					alert("제목을 입력하세요.");
				} else if ($("#goodsPrice").val() == "") {
					alert("가격을 입력하세요.");
				} else if ($("#phone").val() == "") {
					alert("핸드폰 번호를 입력하세요.");
				} else if ($("#titleImg").html() == "") {
					alert("메인 이미지를 입력하세요.");
				} else if ($("#preview").text().length==33) {
					alert("상세 이미지 1개 이상 입력하세요.");
				} else if(deli[0].checked==false && deli[1].checked==false && deli[2].checked==false && trade.checked==false){
					alert("택배 방법을 입력하세요.");
				} else {
					var contents = $("#writting").val();
					var title = $("#goodsTitle").val();
					contents = contents.replace(/(&nbsp;)+/ig, "");// 맨 앞 공백, 공백연속으로 쳤을때 &nbsp;
					contents = contents.replace(/^[ ]+/ig, "");	// &nbsp;자르고나서 또 맨앞에 오는 공백 자르기
					contents = contents.replace(/(<div><br><\/div>)+/ig, "");// 내용없이 엔터쳤을때
					contents = contents.replace("/(<div>[ ]*?<\/div>)/ig", "");// 공백만 넣고 엔터쳤을때
					title = title.replace(/(&nbsp;)+/ig, "");// 맨 앞 공백, 공백연속으로 쳤을때 &nbsp;
					title = title.replace(/^[ ]+/ig, "");	// &nbsp;자르고나서 또 맨앞에 오는 공백 자르기
					title = title.replace(/(<div><br><\/div>)+/ig, "");// 내용없이 엔터쳤을때
					title = title.replace("/(<div>[ ]*?<\/div>)/ig", "");// 공백만 넣고 엔터쳤을때
					
					var contentsText = contents;
					var regContents = /^[가-힣 .,:;()!^?~0-9a-zA-Z\n]{1,150}$/g;	 //레직스 바꾸기		
					var titleText = title;
					var regTitle = /^[가-힣 .,:;()!^?~0-9a-zA-Z]{1,22}$/g;
					var price = $("#goodsPrice").val();
					price = price.replace(/,/ig,"");
					var regPrice = /[1-9][0-9]{3,7}/g;
					var phoneText = $("#phone").val();			
					var regPhone = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;	
					
					if(!regContents.test(contentsText)){
						alert('내용은 한글,영문(1글자~150글자 사이 입력하세요.)');			      
					}else if(!regTitle.test(titleText)){
						alert('제목은 한글,영문(1글자~22글자 사이 입력하세요.)');
					}else if(!regPhone.test(phoneText)){
						alert('잘못된 휴대폰 번호입니다.');
					}else if(price !=0){
						if(price<1000){
							alert("물품 가격은 1,000원~99,999,999원 사이 입력하세요.");
							$("#goodsPrice").val("");
							}else if(price>99999999){
								alert("물품 가격은 1,000원~99,999,999원 사이 입력하세요.");
							}else if(!regPrice.test(price)){
								alert("가격은 숫자만 입력할 수 있습니다.(1,000원~99,999,999원 사이)")
							}else{
								var result = confirm("등록하시겠습니까?");
								if(result==false){
									return false;
								}
								price = parseInt(price);
								$("#goodsPrice").val(price);
								$("#send").submit();
						}
					}
				}
			})
			
			$("#logout_na").on("click", function() {
			 $.ajax({
	                url:"logout",
	                type:"get"
	             }).done(function(){
	                var naver=open("https://nid.naver.com/nidlogin.logout?returl=https://www.naver.com/", "_blank", "width=100,height=100");
	                setTimeout(function(){
	                   naver.close();
	                   location.reload(true);
	                },1000);
	             });
		});
		$("#logout_ka").on("click", function() {
			 $.ajax({
	             url:"logout",
	             type:"get"
	          }).done(function(){
	             var kakao=open("https://developers.kakao.com/logout", "_blank", "width=100,height=100");
	             setTimeout(function(){
	                kakao.close();
	                location.reload(true);
	             },1000);
	          });
		});
		
		var rgx1 = /\D/g;  // /[^0-9]/g 와 같은 표현
		var rgx2 = /(\d+)(\d{3})/; 

		function getNumber(obj){
		     var num01;
		     var num02;
		     num01 = obj.value;
		     num02 = num01.replace(rgx1,"");
		     num01 = setComma(num02);
		     obj.value =  num01;
		}
		function setComma(inNum){
		     var outNum;
		     outNum = inNum; 
		     while (rgx2.test(outNum)) {
		          outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
		      }
		     return outNum;
		}

		</script>

   <script src="../resources/js/vendor/jquery-2.2.4.min.js"></script>
   <script src="../resources/js/vendor/bootstrap.min.js"></script>
   <script src="../resources/js/jquery.ajaxchimp.min.js"></script>
   <script src="../resources/js/jquery.nice-select.min.js"></script>
   <script src="../resources/js/jquery.sticky.js"></script>
   <script src="../resources/js/nouislider.min.js"></script>
   <script src="../resources/js/jquery.magnific-popup.min.js"></script>
   <script src="../resources/js/owl.carousel.min.js"></script>
   <!--gmaps Js-->
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
   <script src="../resources/js/gmaps.min.js"></script>
   <script src="../resources/js/main.js"></script>
    
</body>

</html>