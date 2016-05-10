<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">




<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<link href="carousel.css" rel="stylesheet">


<title>悦听悦动听</title>
<script src="assets/js/ie-emulation-modes-warning.js"></script>
<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="src/css/smusic.css" />
<script src="src/js/musicList.js"></script>
<script src="src/js/smusic.min.js"></script>
<script>
	$(document).ready(function() {

		var music = ${listmusic};

		new SMusic({
			musicList : music
		});

	})
</script>
</head>
<body>
	<jsp:include page="/foreground/common/head.jsp"></jsp:include>



	<div class="row featurette" style="margin-top: 50px;">
		<ul class="breadcrumb">
			<li>首页 <span class="divider"></span></li>
			<li class="active">音乐详情</li>
		</ul>
		
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

							<a class="u-play-btn ctrl-play play" title="暂停"></a>
							<button class="btn btn-primary"  type="button">下载</button>
							<button class="btn btn-danger"  type="button">收藏</button>
						</div>
					</div>

				</div>

				<div class="f-cb">&nbsp;</div>
				<div class="m-music-list-wrap"></div>
			</div>
		</div>
		<div class="col-md-6">
			<p style="text-align: center; font-size: 20px">歌曲简介
			<p style="text-align: center; font-size: 15px;color: GRAY">上传者：${music.author}&nbsp;&nbsp;上传时间：<fmt:formatDate value="${music.time }"
									type="date" pattern="yyyy-MM-dd" />&nbsp;&nbsp;点击次数:${music.click}&nbsp;&nbsp;下载次数${music.uploadNum}</p>
			<p>${music.value}</p>
		</div>
	</div>








	<script src="dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>