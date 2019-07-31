<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<style>
	html body {
		margin: 0px !important;
		font-family: 'Roboto', 'Sans-serif';
		overflow-y: hidden;
	}
	.aside {
		float: left;
    	width: 270px;
    	height: 100%;
    	box-shadow: 0 1px 10px rgba(1, 53, 111, 0)
	}
	.container {
		float: left;
    	width: calc(100% - 270px);
    	height: 762.500px;
    	background: #f0f3f6;
	}
	.aside .area_logo {
    	height: 112px;
    	padding: 22px 40px 24px;
    	border-bottom: 1px solid #e0e4ea;
    	box-sizing: border-box;
    }
    .nav {
    	height: calc(100% - 112px);
    	box-sizing: border-box;
    }
    .nav ul {
    	list-style: none;
    }
    .nav ul li i{
   		padding: 10px;
    }
    .user {
    	position: absolute;
    	right: 10%;
    	top: 78px;
    }
    .txt_tit {
    	padding: 15px;
    }
    .fa {
    	padding: 1px
    }
    .model {
    	display: block;
    	padding: 17px;
    	font-size: larger;
    }
    .borderTop {
    	border-bottom: 1px solid #EAEAEA;
    	width: 86%;
    	margin-left: 16px;
    	margin-top: -17px;
    }
    .fuel {
    	font-size: x-large;
    	color: #00c34c;
    	padding: 15px;
    	margin: 0px !important;
    }
    .txt {
    	padding: 16px;
    	margin: 0px;
    }
    .wrap {
    	height: 100%;
    }
    .nav ul li a {
    	text-decoration: none;
    	color: black;
    }
    .img {
    	position: absolute;
    	margin-top: -21%;
    	margin-left: 27%;
    	border: 1px solid gray;
    }
    .borderBt {
    	border-bottom: 1px solid #EAEAEA;
    	width: 86%;
    	margin-left: 16px;
    	margin-top: 10%;
    }
    .btn {
    	border: none;
    	background: #5e9dfd;
    	color: #fff;
    	width: 40px;
    	height: 30px;
    	font-size: unset;
    	border-radius: 4px;
    	position: absolute;
    	right: 10%;
    	top: 20%;
    }
    .logo {
    	width: 122px;
    	margin-left: -34px;
    	margin-top: -7px;
    }
    .logoTxt {
    	margin-top: -45px;
    	margin-left: 65px;
    	width: 100%;
    	font-size: small;
    }
    .logoTitle {
    	position: absolute;
    	margin-left: 63px;
    	margin-top: 6px;
    }
    .font {
    	font-weight: bold
    }
</style>
</head>
<body>
   <div class="wrap">
	<div class="aside">
			<div class="area_logo">
				<p class="logoTitle"><font class="font" color="blue">C</font>ar <font class="font" color="red">D</font>ash<font class="font" color="gray">B</font>oard</p>
                <img class="logo" src="/resources/img/mainlogo.png"><a href="login"></a></img>
                <p class="logoTxt">
                	It will be a great help to you.</br>
					Anyone is welcome.....
                </p>
            </div>
            <div class="nav">
            		<ul>
            			<li><i class="fa fa-user"></i><a href="carInfo">Info</a></li>
            			<li><i class="fa fa-bar-chart"></i><a href="chart">Car Chart</a></li>
            			<li><i class="fa fa-car"></i><a href="organize">Car organize reserve</a></li>
            		</ul>
            </div>
	</div>

	<div class="container">
            <div class="header">
                <div class="inner">
                    <div class="user">
                       <i class="fa fa-user" id="id"></i>님
                    </div>

                    <h2 class="txt_tit">User CarInfo</h2>
                </div>
           </div>
	       <div class="containers">
	       		<div class="text">
	       			<h2 class="model">2019<span id="model"></h2>
	       			<button class="btn"><i class="fa fa-arrow-circle-o-up"></i></button>
	       			<p class="borderTop"></p>
	       			<p class="fuel">연비 : <font style="font-weight: bold">100000</font>km</p>
	       			<p class="txt">주유량 : 100000km</p>
	       			<p class="txt">주행거리 : 100000km</p>
	       			<p class="txt">엔진오일 : 100000km</p>
	       			<p class="txt">사고 : 1번</p>
	       		</div>
	       		<div class="img">
	       			<!-- DB에 저장된 데이터 가져오기 -->
	       		 	<img src="/resources/img/k3.jpg"></img>
	       		</div>
	       </div>
	       <p class="borderBt"></p>
	       <div id="test"></div>
    </div>
   <div>
   <script>
   $(document).ready(function(){
       $.ajax({
           type : "GET",
           url : "user",
           dataType : "json",
           error : function(){
               alert('통신실패!!');
           },
           success : function(data,status){
        	   console.log(data); 
        	    $.each(data, function (i, item) {
                    $('#id').append(item.name);
                    $('#model').append(item.model);
                })
        	   },
       })
   });
   
   </script>
</body>
</html>