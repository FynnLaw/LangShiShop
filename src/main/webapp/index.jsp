<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
      <!-- 为了让 Bootstrap 开发的网站对移动设备友好，确保适当的绘制和触屏缩放 -->
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      
      <!-- css库文件 -->
      <link href="css/lib/bootstrap.min.css" rel="stylesheet" />
      <link href="css/normalize.css" rel="stylesheet" />
      <link href="css/style.css" rel="stylesheet" />

	  <!-- js 库文件 -->
      <script src="js/lib/jquery-3.1.1.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>
      <script src="js/lib/angular-route.min.js"></script>
      <script src="js/util/app.js"></script>
     
      <script type="text/javascript" src="js/encrypt/des.js"></script>
      <script type="text/javascript" src="js/encrypt/md5.js"></script>
      <!-- rsa 四个文件-->
      <script type="text/javascript" src="js/encrypt/jsbn.js"></script>
      <script type="text/javascript" src="js/encrypt/prng4.js"></script>
      <script type="text/javascript" src="js/encrypt/rng.js"></script>
      <script type="text/javascript" src="js/encrypt/rsa.js"></script>
      <script type="text/javascript" src="js/encrypt/jsencrypt.min.js"></script>
      <script type="text/javascript" src="js/util/encrypt.js"></script>
      
      <script src="index.js"></script>
      
      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
   </head>
   <body background="images/bg.jpg" ng-app="myApp" ng-controller="myCtrl">
   		<div>
   			<div class="head container">
	   			<div class="row clearfix">
					<div class="col-md-12 column">
						<h2 class="text-center milky"><b>解忧杂货店</b></h2>
						<blockquote class="pull-right" style="border-right: 0">
							<p>
								<b>你的地图是一张白纸，所以即使想决定目的地，也不知道路在哪里。</b>
							</p>
							<i>——东野圭吾</i>
						</blockquote>
					</div>
				</div>
				<ul id="myTab" class="nav nav-tabs" style="border-bottom: 0">
				    <li class="active"><a href="#home" data-toggle="tab">写信</a></li>
				    <li><a href="#getReply" data-toggle="tab">取信</a></li>
				    <li><a href="#advise" data-toggle="tab">建议</a></li>
				</ul>
	   		</div>
	   		<div class="body container">
	   			<div class="col-md-8 column container" ng-view></div>
		 		<div class="col-md-3 column pull-right">
			 		<div>
						 <embed src="http://www.xiami.com/widget/197816429_2073511,1769319253,3621488,2074204,2073512,20526,1771139956,1769470092,_235_346_FF8719_494949_1/multiPlayer.swf" type="application/x-shockwave-flash" width="235" height="346" wmode="opaque"></embed>
			 		</div>
				</div>
	   		</div>
	   		<div class="foot"></div>
   		</div>
   </body>
</html>