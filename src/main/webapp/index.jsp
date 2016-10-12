<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
      <!-- 为了让 Bootstrap 开发的网站对移动设备友好，确保适当的绘制和触屏缩放 -->
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="css/bootstrap.min.css" rel="stylesheet" />

      <script src="js/jquery-3.1.1.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/angular.min.js"></script>
      <script src="js/angular-route.min.js"></script>
      
      <script src="index.js"></script>
      <script src="views/welcome/home.js"></script>
      
      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
   </head>
   <body background="images/bg.jpg" ng-app="myApp" ng-controller="myCtrl">
   		<div class="head container">
   			<div class="row clearfix">
				<div class="col-md-12 column">
					<h2 class="text-center"><b>解忧杂货店</b></h2>
					<blockquote class="pull-right">
						<p>
							<b>你的地图是一张白纸，所以即使想决定目的地，也不知道路在哪里。</b>
						</p>
						<i>——东野圭吾</i>
					</blockquote>
				</div>
			</div>
   		</div>
 		<div class="container" ng-view></div>
   		<div class="foot"></div>
   </body>
</html>