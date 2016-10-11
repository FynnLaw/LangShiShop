<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
      <!-- 为了让 Bootstrap 开发的网站对移动设备友好，确保适当的绘制和触屏缩放 -->
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="css/bootstrap.min.css" rel="stylesheet" />

      <script src="js/jquery-3.1.1.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      
      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <div class="container">
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
		<div class="row clearfix">
			<div class="col-md-6 column">
				<img alt="140x140" src="v3/default3.jpg" /> <a id="modal-563297" href="#modal-container-563297" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>
				<div class="modal fade" id="modal-container-563297" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">
									标题
								</h4>
							</div>
							<div class="modal-body">
								内容...
							</div>
							<div class="modal-footer">
								 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 column">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							Panel title
						</h3>
					</div>
					<div class="panel-body">
						Panel content
					</div>
					<div class="panel-footer">
						Panel footer
					</div>
				</div>
				<div class="media">
					 <a href="#" class="pull-left"><img src="v3/default7.jpg" class="media-object" alt='' /></a>
					<div class="media-body">
						<h4 class="media-heading">
							Nested media heading
						</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
						<div class="media">
							 <a href="#" class="pull-left"><img src="v3/default8.jpg" class="media-object" alt='' /></a>
							<div class="media-body">
								<h4 class="media-heading">
									Nested media heading
								</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	  </div>
   </body>
</html>