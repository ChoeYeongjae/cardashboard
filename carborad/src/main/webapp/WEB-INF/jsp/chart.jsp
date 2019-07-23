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
	<script src="https://code.highcharts.com/highcharts-more.js"></script>
	<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
    .oneChart {
    	width: 460px;
    	height: 400px;
    	margin: 0px auto;
    	overflow: hidden;
    	margin-left: 17px;
    	margin-top: 60px;
    }
    .chart-container {
    	margin-top: -39.5%;
    	width: 380px;
    	height: 200px;
    	margin-left: 50%;
    }
    .chart-containers {
    	margin-top: 1%;
    	width: 380px;
    	height: 190px;
    	margin-left: 50%;
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
            		</ul>
            </div>
	</div>

	   <div class="container">
            <div class="header">
                <div class="inner">
                    <div class="user">
                       <i class="fa fa-user"></i>최영재님
                    </div>
                    <h2 class="txt_tit">Car Chart</h2>
                </div>
           </div>
           <div id="container" class="oneChart"></div>
           <div id="container-speed" class="chart-container"></div>
    	   <div id="container-rpm" class="chart-containers"></div>
	   <div>
   
</body>
<script>
Highcharts.chart('container', {
    title: {
        text: 'Car Chart'
    },
    xAxis: {
        categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
    },
    labels: {
        items: [{
            html: 'Car Total Chart',
            style: {
                left: '50px',
                top: '18px',
                color: ( // theme
                    Highcharts.defaultOptions.title.style &&
                    Highcharts.defaultOptions.title.style.color
                ) || 'black'
            }
        }]
    },
    series: [{
        type: 'column',
        name: 'Jane',
        data: [3, 2, 1, 3, 4]
    }, {
        type: 'column',
        name: 'John',
        data: [2, 3, 5, 7, 6]
    }, {
        type: 'column',
        name: 'Joe',
        data: [4, 3, 3, 9, 0]
    }, {
        type: 'spline',
        name: 'Average',
        data: [3, 2.67, 3, 6.33, 3.33],
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }, {
        type: 'pie',
        name: 'Total consumption',
        data: [{
            name: 'Jane',
            y: 13,
            color: Highcharts.getOptions().colors[0] // Jane's color
        }, {
            name: 'John',
            y: 23,
            color: Highcharts.getOptions().colors[1] // John's color
        }, {
            name: 'Joe',
            y: 19,
            color: Highcharts.getOptions().colors[2] // Joe's color
        }],
        center: [100, 80],
        size: 100,
        showInLegend: false,
        dataLabels: {
            enabled: false
        }
    }]
});

var gaugeOptions = {

	    chart: {
	        type: 'solidgauge'
	    },

	    title: null,

	    pane: {
	        center: ['50%', '85%'],
	        size: '100%',
	        startAngle: -90,
	        endAngle: 90,
	        background: {
	            backgroundColor:
	                Highcharts.defaultOptions.legend.backgroundColor || '#EEE',
	            innerRadius: '60%',
	            outerRadius: '100%',
	            shape: 'arc'
	        }
	    },

	    tooltip: {
	        enabled: false
	    },

	    // the value axis
	    yAxis: {
	        stops: [
	            [0.1, '#55BF3B'], // green
	            [0.5, '#DDDF0D'], // yellow
	            [0.9, '#DF5353'] // red
	        ],
	        lineWidth: 0,
	        minorTickInterval: null,
	        tickAmount: 2,
	        title: {
	            y: -70
	        },
	        labels: {
	            y: 16
	        }
	    },

	    plotOptions: {
	        solidgauge: {
	            dataLabels: {
	                y: 5,
	                borderWidth: 0,
	                useHTML: true
	            }
	        }
	    }
	};

	// The speed gauge
	var chartSpeed = Highcharts.chart('container-speed', Highcharts.merge(gaugeOptions, {
	    yAxis: {
	        min: 0,
	        max: 200,
	        title: {
	            text: 'Speed'
	        }
	    },

	    credits: {
	        enabled: false
	    },

	    series: [{
	        name: 'Speed',
	        data: [80],
	        dataLabels: {
	            format:
	                '<div style="text-align:center">' +
	                '<span style="font-size:25px">{y}</span><br/>' +
	                '<span style="font-size:12px;opacity:0.4">km/h</span>' +
	                '</div>'
	        },
	        tooltip: {
	            valueSuffix: ' km/h'
	        }
	    }]

	}));

	// The RPM gauge
	var chartRpm = Highcharts.chart('container-rpm', Highcharts.merge(gaugeOptions, {
	    yAxis: {
	        min: 0,
	        max: 5,
	        title: {
	            text: 'RPM'
	        }
	    },

	    series: [{
	        name: 'RPM',
	        data: [1],
	        dataLabels: {
	            format:
	                '<div style="text-align:center">' +
	                '<span style="font-size:25px">{y:.1f}</span><br/>' +
	                '<span style="font-size:12px;opacity:0.4">' +
	                '* 1000 / min' +
	                '</span>' +
	                '</div>'
	        },
	        tooltip: {
	            valueSuffix: ' revolutions/min'
	        }
	    }]

	}));

	// Bring life to the dials
	setInterval(function () {
	    // Speed
	    var point,
	        newVal,
	        inc;

	    if (chartSpeed) {
	        point = chartSpeed.series[0].points[0];
	        inc = Math.round((Math.random() - 0.5) * 100);
	        newVal = point.y + inc;

	        if (newVal < 0 || newVal > 200) {
	            newVal = point.y - inc;
	        }

	        point.update(newVal);
	    }

	    // RPM
	    if (chartRpm) {
	        point = chartRpm.series[0].points[0];
	        inc = Math.random() - 0.5;
	        newVal = point.y + inc;

	        if (newVal < 0 || newVal > 5) {
	            newVal = point.y - inc;
	        }

	        point.update(newVal);
	    }
	}, 2000);

</script>
</html>