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
    	padding: 16px 0px 0px 40px;
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
    	margin-top: 15px;
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
    	margin-top: -16.5%;
    	margin-left: 27%;
    	border: 1px solid gray;
    }
    .borderBt {
    	border-bottom: 1px solid #EAEAEA;
    	width: 86%;
    	margin-left: 16px;
    	margin-top: 13%;
    }
    .btn1 {
    	border: none;
    	background: #5e9dfd;
    	color: #fff;
    	width: 40px;
    	height: 30px;
    	font-size: unset;
    	border-radius: 4px;
    	position: absolute;
    	left: 43%;
    	top: 31%;
    }
     .btn2 {
    	border: none;
    	background: #5e9dfd;
    	color: #fff;
    	width: 40px;
    	height: 30px;
    	font-size: unset;
    	border-radius: 4px;
    	position: absolute;
    	left: 43%;
    	top: 41%;
    }
     .btn3 {
    	border: none;
    	background: #5e9dfd;
    	color: #fff;
    	width: 40px;
    	height: 30px;
    	font-size: unset;
    	border-radius: 4px;
    	position: absolute;
    	left: 43%;
    	top: 51%;
    }
    .btn4 {
    	border: none;
    	background: #5e9dfd;
    	color: #fff;
    	width: 40px;
    	height: 30px;
    	font-size: unset;
    	border-radius: 4px;
    	position: absolute;
    	left: 43%;
    	top: 61%;
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
    *{margin:0;padding:0;}
    .layer{z-index:1;display:none;justify-content:center;align-items:center;background:rgba(0,0,0, 0.5);position:fixed;left:0;right:0;top:0;bottom:0;}
    .layer .box{margin:1px;width:204px;background:#fff;position:relative;}
    .layer .close{position:absolute;right:20px;bottom:20px;display:block;background:#09F;color:#fff;text-align:center;padding:5px 20px;font-size:13px;}
    .layer:target{display:flex;animation:open 0.5s;}
    @keyframes open {
      from {opacity:0;} to {opacity:1;}
    }
  .text {
  	margin-top:52px;
  }
  .right {
  	width: 270px;
    height: 184px;
    border-radius: 8px;
    background: #fff;
    margin-top: -130px;
    position: absolute;
  }
  form .submit {
  	border: none;
  	display: inline-block;
    width: 226px;
    border-radius: 4px;
    background: #5e9dfd;
    font-size: 13px;
    font-weight: bold;
    line-height: 28px;
    text-align: center;
    color: #fff;
    box-sizing: border-box;
  	margin-top: 10px;
  }
   form a {
  	border: none;
  	display: inline-block;
    width: 226px;
    border-radius: 4px;
    background: #5e9dfd;
    font-size: 13px;
    font-weight: bold;
    line-height: 28px;
    text-align: center;
    color: #fff;
    box-sizing: border-box;
  	margin-top: 10px;
  	text-decoration: none;
  }
  form .box {
  	width: 187px;
    margin-top: 7px;
    padding: 0px 8px;
    height: 24px;
  }
  form {
  	padding: 21px 31px 2px 23px;
  	margin-fop:10px;
  }
  .right .member{
  	font-size: x-small;
  	font-weight: bold;
  	margin-left: 5px;
  	margin-top: 20px;
  }
  .right .member a {
  	text-decoration: none;
  }
  .right .member1{
  	font-size: x-small;
  	font-weight: bold;
  	margin-left: 5px;
  	margin-top: 20px;
  }
  .right .member1 a {
  	text-decoration: none;
  }
  .right .member2{
  	font-size: x-small;
  	font-weight: bold;
  	margin-left: 5px;
  	margin-top: 20px;
  }
  .right .member2 a {
  	text-decoration: none;
  }
  .right .member3{
  	font-size: x-small;
  	font-weight: bold;
  	margin-left: 5px;
  	margin-top: 20px;
  }
  .right .member3 a {
  	text-decoration: none;
  }
  form .idBtn {
  	position: absolute;
    margin-left: 59%;
    margin-top: -4%;
    border-radius: 4px;
    background: #5e9dfd;
    font-size: 9px;
    border: none;
  	display: inline-block;
  	color: #fff;
  }
  form p {
  	margin: 0px !important;
  }
  .btn1 .fa {
    color: #fff;
    padding: 6px 15px 13px 13px;
  }
  .btn2 .fa {
    color: #fff;
    padding: 6px 15px 13px 13px;
  }
  .btn3 .fa {
    color: #fff;
    padding: 6px 15px 13px 13px;
  }
  .btn4 .fa {
    color: #fff;
    padding: 6px 15px 13px 13px;
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
	       			<div id="popup1" class="layer">
   		 			  <div class="box">
      					<div class="right"> 
                	     <form id="member">
                	        <h3 style="text-align: center; margin-bottom:10px;">Car Info</h3>
                  		   <div>
                  		    <input type="hidden" id="ids1" name="ids"></input>
                  			<input class="box" type="text" placeholder="fuel" name="fuel"></input>
                  		   </div>
                  			<div><input id="subFuel" class="submit" type="submit" value="join"></input></div>
                  			<div><a href="#" onclick="javascript:self.close();">닫기</a></div>
               			  </form>
            			 </div>
    					</div>
  					</div>
  					<div id="popup2" class="layer">
   		 			  <div class="box">
      					<div class="right"> 
                	     <form id="member1">
                	        <h3 style="text-align: center; margin-bottom:10px;">Car Info</h3>
                  		   <div>
	                  		<input type="hidden" id="ids2" name="ids"></input>
                  	        <input class="box" type="text" placeholder="oiling" name="oiling"></input>
                  		   </div>
                  			<div><input class="submit" id="subOiling" type="submit" value="join"></input></div>
                  			<div><a href="#" onclick="javascript:self.close();">닫기</a></div>
               			  </form>
            			 </div>
    					</div>
  					</div>
  					<div id="popup3" class="layer">
   		 			  <div class="box">
      					<div class="right"> 
                	     <form id="member2">
                	        <h3 style="text-align: center; margin-bottom:10px;">Car Info</h3>
                  		   <div>
                  		    <input type="hidden" id="ids3" name="ids"></input>
                  	        <input class="box" type="text" placeholder="mileage" name="mileage"></input>
                  		   </div>
                  			<div><input class="submit" id="subMileage" type="submit" value="join"></input></div>
							<div><a href="#" onclick="javascript:self.close();">닫기</a></div>
               			  </form>
            			 </div>
    					</div>
  					</div>
  					<div id="popup4" class="layer">
   		 			  <div class="box">
      					<div class="right"> 
                	     <form id="member3">
                	        <h3 style="text-align: center; margin-bottom:10px;">Car Info</h3>
                  		   <div>
                  		   	<input type="hidden" id="ids4" name="ids"></input>
                  			<input class="box" type="text" placeholder="event" name="event"></input>
                  		   </div>
                  			<div><input class="submit" id="subEvent" type="submit" value="join"></input></div>
                  			<div><a href="#" onclick="javascript:self.close();">닫기</a></div>
               			  </form>
            			 </div>
    					</div>
  					</div>
  					
	       			<!-- <button class="btn"><i class="fa fa-arrow-circle-o-up"></i></button> -->
	       			<p class="borderTop"></p>
	       			<p class="fuel">연비 : <font style="font-weight: bold">100000</font>km</p>
	       			<div class="btn1">
	       				<a href="#popup1" class="opener"><i class="fa fa-check"></i></a>
	       			</div>
	       			<p class="txt">주유량 : </p>
	       			<div class="btn2">
	       				<a href="#popup2" class="opener"><i class="fa fa-check"></i></a>
	       			</div>
	       			<p class="txt">주행거리 : 100000km</p>
	       			<div class="btn3">
	       				<a href="#popup3" class="opener"><i class="fa fa-check"></i></a>
	       			</div>
	       			<p class="txt">사고 : 1번</p>
	       			<div class="btn4">
	       				<a href="#popup4" class="opener"><i class="fa fa-check"></i></a>
	       			</div>
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
        	    $.each(data, function (i, item) {
                    $('#id').append(item.name);
                    $('#ids1').val(item.ids);
                    $('#ids2').val(item.ids);
                    $('#ids3').val(item.ids);
                    $('#ids4').val(item.ids);
        	    })
           },
       })
        $.ajax({
           type : "GET",
           url : "carInfos1",
           dataType : "json",
           error : function(){
               alert('통신실패!!');
           },
           success : function(data,status){ 
        	    $.each(data, function (i, item) {
                    console.log(item.ids);
                    console.log(item.event);
                    console.log(item.fuel);
                    console.log(item.mileage);
                    console.log(item.oiling);
                    console.log(item.name);
                    console.log(item.model);
                    
        	    })
           },
       })
       
       $("#subFuel").click(function(){
      	 
    	   var params = jQuery("#member").serialize();
           console.log(params);
           
           $.ajax({
               url: '/carFuel',
               data: params,
               type: 'POST'
           })
    	    	setTimeout(function() {
    		   		location.replace("carInfo"); 
 			}, 0);  
		});
       
       $("#subOiling").click(function(){
        	 
    	   var params = jQuery("#member1").serialize();
           alert(params);
           
           $.ajax({
               url: '/carOiling',
               data: params,
               type: 'POST'
           })
    	    	setTimeout(function() {
    		   		location.replace("carInfo"); 
 			}, 0);  
		});
       
       $("#subMileage").click(function(){
      	 
    	   var params = jQuery("#member2").serialize();
           console.log(params);
           
           $.ajax({
               url: '/carMileage',
               data: params,
               type: 'POST'
           })
    	    	setTimeout(function() {
    		   		location.replace("carInfo"); 
 			}, 0);  
		});
       
       $("#subEvent").click(function(){
      	 
    	   var params = jQuery("#member3").serialize();
           alert(params);
           
           $.ajax({
               url: '/carEvent',
               data: params,
               type: 'POST'
           })
    	    	setTimeout(function() {
    		   		location.replace("carInfo"); 
 			}, 0);  
		});
   });
   
   </script>
</body>
</html>