<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
  body {
  	background-image: url("/resources/img/loginMain.png");
  	background-size: cover;
  }
  .right {
  	width: 270px;
    height: 290px;
    margin-left: 38%;
    border-radius: 8px;
    background: #fff;
    margin-top: 10%;
    position: absolute;
  }
  form .submit {
  	border: none;
  	display: inline-block;
    width: 209px;
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
  form .box {
  	width: 90%;
  	margin-top: 7px;
  	padding: 0px 22px;
  	height: 24px;
  }
  .fa{
  	position: absolute !important;
    color: slategrey;
    margin: 13px 8px 0px 6px;
  } 
  form {
  	padding: 15px 60px 10px 32px;
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
  form h2 {
  	margin-left: 14px;
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
</style>
</head>
<body>
	  <div class="right"> 
                <form id="member">
                  <h2>Member Entry</h2>
                  <button class="idBtn">ID Check</button>
                  <div>
                  	<i class="fa fa-user"></i>
                  	<input class="box" type="text" placeholder="id" name="ids"></input>
                  </div>
                  <div>
                  	<i class="fa fa-unlock"></i>
                  	<input class="box" type="password" placeholder="pw" name="pw"></input>
                  </div>
                  <div>
                  	<i class="fa fa-child"></i>
                  	<input class="box" type="text" placeholder="name" name="name"></input>
                  </div>
                  <div>
                  	<i class="fa fa-at"></i>
                  	<input class="box" type="email" placeholder="email" name="email"></input>
                  </div>
                  <div><input class="submit" type="submit" value="Join"></input></div>   
               </form>
            </div>
         <script>
          $(document).ready(function() {
           $(".submit").click(function(){
		
           var params = jQuery("#member").serialize();
           console.log(params);
           
           $.ajax({
               url: '/carmembers',
               data: params,
               type: 'POST'
           });
    	   setTimeout(function() {
    		   location.replace("carmember"); 
			}, 0);
   		});
      });
         $(document).ready(function() {
              $(".idBtn").click(function(){
            	  
            	  var value1 = $('input[name=ids]').val();
            	  alert(value1);
            	  var value2 = $('input[name=pw]').val();
            	  alert(value2);
            	  var regex=/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{1,5}$/;
            	  var value3 = $('input[name=email]').val();
            	  alert(value3);
            	  

      		});
         });
   </script>   
</body>
</html>