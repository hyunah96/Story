<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
	<title>Login V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/bootstrap/css/bootstrap.min.css.map">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/fonts/loginfonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/fonts/loginfonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/css/loginutil.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/loginmain.css">
<!--===============================================================================================-->
	<script src="../resources/js/jquery-3.5.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/js/icia.common.js"></script>
<script>


	
$(function(){
	
	//idbox ??????????????????
	$("#idbox").css("display", "none");
	
	$("#Findbtn").on("click", function(){
		fn_findCheck();	
	});
	
	$("#userEmail").on("keypress", function(e){
		if(e.which == 13)
		{	
			fn_findCheck();
		}
		
	});
	
	$("#btn_cc").on("click", function(){
		    Swal.fire({ 
			icon: 'warning',
			text: '????????? ???????????? ???????????????.'
		  }).then(function(){
			  location.href = "/board/login";
		  });
		 
  });
	
  
});
	
function fn_findCheck()
{
	if($.trim($("#userEmail").val()).length <= 0)
	{
	 	//alert("???????????????.");
	 	//$("#userEmail").focus();
	 	//return;
		Swal.fire({ 
			icon: 'warning',
			text: '???????????? ???????????????.'
		}).then(function(){
			$("#userEmail").focus();
		 	return;
		});

 	}
	else
	{
		var i = 0;
	
		$.ajax({
			type : "POST",
			url : "/user/FindingIdProc",
			data : {
				userEmail : $("#userEmail").val()
			},
		
			datatype : "JSON",
			beforeSend : function(xhr){
	            xhr.setRequestHeader("AJAX", "true");
	        },
	        success : function(response)
	        {
	        	if(response.code == 0)
       			{
	        		Swal.fire({ 
	        			icon: 'success',
	        			title: '????????? ?????? ??????!',
	        			text: '???????????? ?????????????????? ???????????? ???????????????.'
	        		}).then(function(){
	        			$("#Findbtn").prop("disabled", true); //??????????????????
	        			$("#gusdkqkqh2").append("<ul class='cssPlease3'>????????? ????????? ????????? ????????? ??????????????????.</ul>");
	        			for(i=0;i<=response.data.length;i++)
        				{
	        				$("#gusdkqkqh2").append("<li class='cssPlease2'>"+response.data[i].userName+response.data[i].userId+"</li>");
        				}	        			
	        		});
        			//$("#gusdkqkqh").append("<ul class='cssPlease1'>?????? ????????? ??????</ul>");
        			//for(i=0;i<=response.data.length;i++)
        			//	{
        			//		$("#gusdkqkqh").append("<li class='cssPlease2'>"+response.data[i].userName+response.data[i].userId+" "+"</li>");
        			//	}
        			//$("#Findbtn").prop("disabled", true);
        			$("#idbox").css("display", "block"); //????????????????????? ????????? ?????????????????????
       			}
 	        	else if(response.code == 100)
	     		{
	     		 	//alert("????????? ???????????? ????????????");
	 	   		    Swal.fire({ 
	 	   			icon: 'error',
	 	   			text: '????????? ???????????? ????????????.'
	 	   		  }).then(function(){
	 	   			  return;
	 	   		  });
	 	   		   return;
	     		}

	        }
	       
		});
		
	}
}
</script>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						<h1 id="logo"><img src="../resources/images/theWellding.png" width="150" height="auto" onclick="fn_index()" style="cursor: pointer;" /></h1>
					</span>

					<span class="login100-form-title" style="padding-bottom: 30px;">
						<!-- <i class="zmdi zmdi-font"></i> -->
						
						<div class="mTab eTab">	
								<ol id="gusdkqkqh">
									<h3>????????? ??????</h3>
									<p class="id_list">??????????????? ????????? ???????????? ??????????????????</p>	
								</ol>
						</div>
					</span>
					<div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							
						</span>
						<input class="input100" type="text" name="userEmail" id="userEmail" >
						<span class="focus-input100" data-placeholder="Email"></span>
						
					</div>
					
					<div id="idbox">
						<div id="gusdkqkqh2">
							<div id="id_li_box"></div>
						</div>
						<div class="gusdkqkqh2">
							<a class="txt2" href="/board/login">?????????</a>
							<p style="cursor:default; color: #888; display: inline-block;">&nbsp;&nbsp;or&nbsp;&nbsp; </p>
							<a class="txt2" href="/user/FindingPwd">???????????? ??????</a>
						</div>
					</div>
					
					
					
					
							<div class="container-login100-form-btn2">
						<div class="wrap-login100-form-btn2">
							<div class="login100-form-bgbtn2"></div>
							<button type="button" id="Findbtn" class="login100-form-btn2" >
								????????? ??????
							</button>
						</div>
						<div class="wrap-login100-form-btn2">
							<div class="login100-form-bgbtn2"></div>
							<button type="button" id="btn_cc"" class="login100-form-btn2">
								??????
							</button>
						</div>
						
						
					</div>
					
					

					
						<input type="button" onclick="plusNum()" value="d" style="width: 50px; height: 50px; background-color: white; color: white; cursor: default;"/>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/bootstrap/js/popper.js"></script>
	<script src="../resources/vendor/loginvendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/daterangepicker/moment.min.js"></script>
	<script src="../resources/vendor/loginvendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../resources/js/loginmain.js"></script>

</body>
</html>