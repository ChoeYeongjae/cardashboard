<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/series-label.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	body {
		margin: 0px !important;
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
    	height: 100%;
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
</style>
</head>
<body>
	<div class="aside">
			<div class="area_logo">
                <!-- <a href="main.html" class="logo" title="logo"></a> -->
                <p>
                </p>
            </div>
            <div class="nav">
            		<ul>
            			<li><i class="fa fa-user"></i>User Info</li>
            			<li><i class="fa fa-bar-chart"></i>User CarInfo</li>
            		</ul>
            </div>
	</div>

	<div class="container">
            <div class="header">
                <div class="inner">
                    <div class="area_user">
                       
                    </div>
                    <h2 class="txt_tit">User CarAdmin</h2>
                </div>
           </div>
           <div>
	           <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
           </div>
    </div>
</body>
</html>