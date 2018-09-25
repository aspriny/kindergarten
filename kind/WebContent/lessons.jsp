<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/fullcalendar.css">
<link rel="stylesheet" href="css/unicorn.main.css">
<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color">
<link rel="stylesheet" href="css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<style type="text/css">
#iframe {
	position: absolute;
	bottom: 0;
	height: 100%;
	width: 100%;
}
</style>
</head>

<body>
	<div id="header">
		<h1>
			<a href="javascript:window.open('dashboard.html');">博苑幼儿园</a>
		</h1>
	</div>

	<!-- <div id="search">
		<input type="text" placeholder="请输入搜索内容...">
		<button type="submit" class="tip-right" title="Search">
			<i class="icon-search icon-white"></i>
		</button>
	</div> -->
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav btn-group">
			<li ><a title="" href=""> <i
					class="icon icon-user"></i> <span class="text">个人资料</span>
			</a></li>
			<li ><a title="" href="login.html"> <i
					class="icon icon-share-alt"></i> <span class="text">退出</span>
			</a></li>
		</ul>
	</div>

	<div id="sidebar">
		<!--<a href="" class="visible-phone">
			<i class="icon icon-home"></i> 首页</a>-->
		<ul>
			<li class="active"><a href="index.jsp"> <i class="icon icon-home"></i>
					<span>首页</span>
			</a></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>校园信息</span>
			</a>
				<ul>
					<li><a href="test.html">教师风采</a></li>
					<li><a href="form-validation.html">幼儿作品</a></li>
					<li><a href="form-wizard.html">预约报名</a></li>
				</ul></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>课表管理</span>
			</a>
		<ul>        
					<li><a href="lessons.jsp">课程安排</a></li>
					<li><a href="teacherlesson.jsp">课表搜索</a></li>
				</ul></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>教务管理</span>
			</a>
				<ul>
					<li><a href="grade.jsp">年级信息管理</a></li>
					<li><a href="class.jsp">班级信息管理</a></li>
					<li><a href="test.html">幼儿管理</a></li>
					<li><a href="teacherpage.jsp">教师信息管理</a></li>
				</ul></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>教材管理</span>
			</a>
				<ul>
					<li><a href="test.html">幼儿教材</a></li>
				</ul></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>收费管理</span>
			</a>
				<ul>
					<li><a href="test.html">收费项目</a></li>
					<li><a href="form-validation.html">欠费记录</a></li>
					<li><a href="form-wizard.html">账单</a></li>
				</ul></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>校车管理</span>
			</a></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>日常事务管理</span>
			</a>
				<ul>
					<li><a href="test.html">活动</a></li>
					<li><a href="form-validation.html">食谱</a></li>
					<li><a href="form-wizard.html">事故记录</a></li>
				</ul></li>
			<li class="submenu"><a href=""> <i class="icon icon-th-list"></i>
					<span>报表统计</span>
			</a>
				<ul>
					<li><a href="test.html">学生出勤</a></li>
					<li><a href="form-validation.html">职工出勤</a></li>
					<li><a href="form-wizard.html">膳食</a></li>
				</ul></li>
		</ul>
	</div>
<div id="content">
		<iframe id="iframe" scrolling="yes" frameborder="0"
			src="LessonServlet/showlessons"></iframe>
	</div>
	<script src="js/excanvas.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.ui.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<script src="js/jquery.peity.min.js"></script>
	<script src="js/fullcalendar.min.js"></script>
	<script src="js/unicorn.js"></script>
	<script src="js/unicorn.dashboard.js"></script>
</body>
</html>