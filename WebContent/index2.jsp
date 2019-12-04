<%@ page import="java.io.BufferedReader"%>
<%@ page import="javax.xml.parsers.DocumentBuilder"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@ page import="org.w3c.dom.Document"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.io.StringReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.xml.xpath.XPath"%>
<%@ page import="javax.xml.xpath.XPathConstants"%>
<%@ page import="javax.xml.xpath.XPathExpression"%>
<%@ page import="javax.xml.xpath.XPathFactory"%>
<%@ page import="org.w3c.dom.Node"%>
<%@ page import="org.w3c.dom.NodeList"%>
<%@ page import="org.xml.sax.InputSource"%>
<%@ page import="com.servlet.accessApi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.awt.Color"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyANvwdo8GZiSPXRj5IxvBeB3oTBLPi2OLY&sensor=true"></script>
<title>대기 알려조~!</title>	<!-- 사이트 타이틀 -->
	<link rel="stylesheet" href="css/bootstrap.css">
    <!-- Icons-->
    <link rel="icon" type="image/ico" href="./img/favicon.ico" sizes="any" />	<!-- 사이트 타이틀에 대한 아이콘 -->
    <link href="node_modules/@coreui/icons/css/coreui-icons.min.css" rel="stylesheet">
    <link href="node_modules/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">
    <link href="node_modules/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="node_modules/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    <!-- Main styles for this application-->
    <link href="css/style.css" rel="stylesheet">
    <link href="vendors/pace-progress/css/pace.min.css" rel="stylesheet">
    <!-- Global site tag (gtag.js) - Google Analytics-->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      // Shared ID
      gtag('config', 'UA-118965717-3');
      // Bootstrap ID
      gtag('config', 'UA-118965717-5');
    </script>
    <style type="text/css">
    p{text-align: center;
    	height:95px;}
    b{background-color : #F6D8CE;}
    c{background-color : #F5F6CE;}
    d{background-color : #CEF6CE;}
    e{background-color : #CEE3F6;}
    
    .imgContainer{
    float:left;}
    </style>
</head>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BODY@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
    <header class="app-header navbar">
      <a class="navbar-brand" href="#">
      <Strong>
      	<i class ="nav-icon icon-speedmeter"></i>대기 알려조~!</Strong>
        <img class="navbar-brand-minimized" src="img/brand/sygnet.svg" width="30" height="30" alt="CoreUI Logo">	<!--  왼쪽 상단 위 마크로고0-->
      </a>
      <ul class="nav navbar-nav ml-auto">
        <li class="nav-item d-md-down-none">
          <a class="nav-link" href="#">
            <i class="icon-location-pin"></i> <!-- 왼쪽 상단 아이콘, 로고 위치 고정 -->
          </a>
      </ul>
    </header>
    
    <div class="app-body">
      <div class="sidebar">
        <nav class="sidebar-nav">
          <ul class="nav">
            <li class="nav-item">
              <a class="nav-link" href="index.html"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="start.jsp">
                <i class="nav-icon icon-drop"></i>대기정보
                <span class="badge badge-primary">NEW</span>
               </a>
            </li>
            <li class="nav-item">
           		<a class="nav-link" href="index2.jsp">
                <i class="nav-icon icon-pencil"></i>대기지식</a>
            </li>
          </ul>
        </nav>
        <button class="sidebar-minimizer brand-minimizer" type="button"></button>
      </div>
      <main class="main">
      
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
         <!-- 현재위치 표시 타이틀 -->
           <li class="btn">
                <form action="start.jsp" method="get">	
				<input type="submit" value="대기정보 페이지로 돌아가기" style="width:230px;">
				</form>
          </li>
        </ol>
        
        <div class="portfolio-div">
        <div class="portfolio">
            <div class="no-padding portfolio_container">
                <!-- single work -->
                <div class="col-md-3 col-sm-6  fashion logo">
                        <img src="img/image01.png" alt="" class="img-responsive" height="400px" width="350%" style="border:2px solid red"/>
                </div>
            </div>
            <br>
            
            <div class="image123">
    			<div class="imgContainer">
        			<img src="img/mise.png" class="img-responsive"  style="border:2px solid red"/>
        			<strong><h4><p>미세먼지 영향</p></strong></h4>
    			</div>
    			<div class="imgContainer">
        			<img class="middle-img" src="img/image03.png"  class="img-responsive" width=400px style="border:2px solid green"/>
        			<strong><h4><p>일산화탄소 농도별 영향</p></strong></h4>
    			</div>
    			<div class="imgContainer">
         			<img src="img/image04.png"  class="img-responsive" height=400px style="border:2px solid blue"/>
        			<strong><h4><p>일산화탄소 경보시 행동요령</p></strong></h4>
    			</div>
			</div>
			
			<div class="image123">
    			<div class="imgContainer">
        			<img src="img/image07.png" class="img-responsive" style="border:2px solid red"/>
        			<strong><h4><p>아황산가스 설명</p></strong></h4>
    			</div>
    			<div class="imgContainer">
        			<img class="middle-img" src="img/image06.png"  class="img-responsive" height=400px style="border:2px solid green"/>
        			<strong><h4><p>오존경보 </p></strong></h4>
    			</div>
    			<div class="imgContainer">
         			<img src="img/image05.png"  class="img-responsive" height=400px style="border:2px solid blue"/>
        			<strong><h4><p>오존예보 및 행동요령</p></strong></h4>
    			</div>
			</div>
            <!-- end portfolio_container -->
        </div>
        <!-- portfolio -->
    </div>
      </main>
    </div>

    <!-- CoreUI and necessary plugins-->
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/pace-progress/pace.min.js"></script>
    <script src="node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
    <script src="node_modules/@coreui/coreui/dist/js/coreui.min.js"></script>
    <!-- Plugins and scripts required by this view-->
    <script src="node_modules/chart.js/dist/Chart.min.js"></script>
    <script src="node_modules/@coreui/coreui-plugin-chartjs-custom-tooltips/dist/js/custom-tooltips.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>