<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<link rel="icon" href="../../favicon.ico">

<title>悦听悦动听</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">
<link rel="stylesheet" href="src/css/smusic.css" />
<script src="src/js/musicList.js"></script>
<script src="src/js/smusic.min.js"></script>
<script  type="text/javascript" src="assets/js/jquery-2.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		var music = ${listmusic};

		
		$("#sou").click(function (){
			
			if($("#key").val()==""){
				alert("请输入内容");
				return;
			}
			 $.post("music?action=find",{key: $("#key").val()},function(json){
					var result=eval('('+json+')');
					alert(json);
					if(result==''){
						alert("没有结果");
					}
					else{
						music=json;
						javascript:window.location="#songs";
					}
					
				})
				
		});
		new SMusic({
			musicList : music
		});
	})
</script>
</head>
<!-- NAVBAR
================================================== -->
<body>
	<jsp:include page="/foreground/common/head.jsp"></jsp:include>

	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="musicPic/1.jpg" alt="First slide"
					name="0">
				<div class="container">
					<div class="carousel-caption">
						<h1>悦听悦动听</h1>
						<p>在这里可以找到你想听的音乐</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">搜索</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item ">
				<img class="second-slide" src="musicPic/2.jpg" alt="Second slide"
					name="1">
				<div class="container">
					<div class="carousel-caption">
						<h1>没有你找不到只有你想不到</h1>
						<p>在这里还可以下载音乐</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">下载</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="musicPic/3.jpg" alt="Third slide"
					name="2">
				<div class="container">
					<div class="carousel-caption">
						<h1>分享也是一种美</h1>
						<p>把你最喜爱的音乐分享给别人吧</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">分享</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->




	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="musicPic/7.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>最新分享</h2>
				<c:forEach var="music" items="${musicNews}">
					<p>
						<a href='music?action=dail&musicId=${music.id}'>${music.title}&nbsp;&nbsp;&nbsp;${music.singer}</a>
					</p>
				</c:forEach>
				

				<p>
				<p>
					<a class="btn btn-default" href="#" role="button">查看更多 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="musicPic/8.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>热门音乐</h2>
				<c:forEach var="music" items="${musicHot}">
					<p>
						<a href='music?action=dail&musicId=${music.id}'>${music.title}&nbsp;&nbsp;&nbsp;${music.singer}</a>
					</p>
				</c:forEach>
				








				<p>
				<p>
					<a class="btn btn-default" href="#" role="button">查看更多 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="musicPic/9.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>推荐音乐</h2>
				<c:forEach var="music" items="${musicTj}">
					<p>
						<a href='music?action=dail&musicId=${music.id}'>${music.title}&nbsp;&nbsp;&nbsp;${music.singer}</a>
					</p>
				</c:forEach>






				<p>
				<p>
					<a class="btn btn-default" href="#" role="button">查看更多 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>

		<!-- START THE FEATURETTES -->
		<p>
		<p>
		<hr class="featurette-divider">
		<p
			style="text-align: center; font-size: 50px; margin-bottom: 30px; color: blue; margin-top: -10px;"><a name="songs">歌曲试听</a></p>
		<div class="row featurette">
			<div class="col-md-6">

				<div class="grid-music-container f-usn">
				<div class="m-music-play-wrap">
					<div class="u-cover" style="float: left;"></div>
					<div class="m-now-info">
						<h1 class="u-music-title">
							<strong>标题</strong><small>歌手</small>
						</h1>
						<div class="m-now-controls">
							<div class="u-control u-process">
								<span class="buffer-process"></span> <span
									class="current-process"></span>
							</div>
							<div class="u-control u-time">00:00/00:00</div>
							<div class="u-control u-volume">
								<div class="volume-process" data-volume="0.50">
									<span class="volume-current"></span> <span class="volume-bar"></span>
									<span class="volume-event"></span>
								</div>
								<a class="volume-control"></a>
							</div>
						</div>
						<div class="m-play-controls">
							<a class="u-play-btn prev" title="上一曲"></a> <a
								class="u-play-btn ctrl-play play" title="暂停"></a> <a
								class="u-play-btn next" title="下一曲"></a> <a
								class="u-play-btn mode mode-list current" title="列表循环"></a> <a
								class="u-play-btn mode mode-random" title="随机播放"></a> <a
								class="u-play-btn mode mode-single" title="单曲循环"></a>
						</div>
					</div>

				</div>
				
				<div class="f-cb">&nbsp;</div>
				<div class="m-music-list-wrap"></div>
			</div>
			</div>
			<div class="col-md-6">
				<div id="myCarousel2" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel2" data-slide-to="0"></li>
						<li data-target="#myCarousel2" data-slide-to="1"></li>
						<li data-target="#myCarousel2" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img class="second-slide" src="musicPic/4.jpg" alt="First slide"
								name="0">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item ">
							<img class="second-slide" src="musicPic/5.jpg"
								alt="Second slide mg-circle" name="1">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img class="third-slide mg-circle" src="musicPic/6.jpg"
								alt="Third slide" name="2">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#myCarousel2" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel2"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<!-- /.carousel -->
			</div>
		








		<hr class="featurette-divider">
		<!-- FOOTER -->
		<jsp:include page="/foreground/common/foot.jsp"></jsp:include>

	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>