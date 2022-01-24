<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	btn1_click()
});
</script>
</head>
<style>
html, bady
{
	margin: 0;
	padding: 0;
}
#led_group
{
	margin: 0 auto;
	width: 340px;
	height: 600px;
	background-image: url( "../resources/images/food_coupon_m.png" );
	background-repeat : no-repeat;
    background-size : cover;
    overflow-y: hidden;
}

#qrcode
{
	width: 150px; 
	height:150px; 
	margin-top:15px;
	position: relative;
	top: 350px;
	
}

#led_group h5
{
	position: relative;
	text-align: center;
	top: 78px;
	font-size: 54px;
	font-family: 'Nanum Pen Script', cursive;
	color: #bc9061;
}

#led_group h6
{
	position: relative;
	text-align: left;
	top: 8px;
	left: 40px;
	font-size: 40px;
	font-family: 'Nanum Pen Script', cursive;
	color: #333;
}
</style>
<body>
    <div id="led_group" align="center">
    	<!--h5>스프링 & 톰캣</h5-->
    	<input type="hidden" value="http://5d00-106-243-194-229.ngrok.io/board/foodCpnM2?rezNo=${rezNo }" id="led_text" />
    	<div id="qrcode"></div>
    </div>
    
<script>
var qrcode = new QRCode(document.getElementById("qrcode"),{
	width: 150,
	height: 150
});

function makeCode()
{
	var elText = document.getElementById("led_text");
	
	if(!elText.value)
	{
		//alert("InPut a Text");
		elText.focus();
		return;
	}
	//alert(elText.value);
	qrcode.makeCode(elText.value);
}

function btn1_click()
{
	makeCode();
}

function resize(obj)
{
	obj.style.height = "1px";
	obj.style.height = (12 + obj.scrollHeight) + "px";
}
</script>    
    
</body>

</html>