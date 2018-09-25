<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>张成幼儿园</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<link rel="stylesheet" href="css/fullcalendar.css">
	<link rel="stylesheet" href="css/unicorn.main.css">
	<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color">
	<link rel="stylesheet" href="css/mycss.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script src="js/jquery-1.8.2.js"></script>

		
			
</head>
<style>
	#time{
	float:right;
	margin-right:40px;
	margin-top:20px;
	}
	#content{
		background-color: #00e3e3;
		/* background-image: url(img/bgtu.jpg); */
		background-repeat: no-repeat;
		background-size: auto;
	}
 .accordionBox {
            /*--手风琴动画效果--*/
            width: 100%;
            height: 449px;
            margin: 10px auto 10px auto;
            margin-bottom: 60px;
            position: relative;
            overflow: hidden;
        }
        .accordionBox ul {
            height: 449px;
            overflow: hidden;
        }
        .accordionBox ul li {
            width: 140px;
            height: 449px;
            position: relative;
            overflow: hidden;
            float: left;
            margin-right: 2px;
        }
        .accordionBox ul li img {
            width:100%;
            height: 100%;
            object-fit: cover;
            border: 1px solid #1388ef;
        }
        .accordionBox ul li.first {
            width: 550px;
        }
</style>
<script type="text/javascript">  
 function startTime(){  
  var today=new Date()  
  var week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");  
  var year=today.getFullYear()  
  var month=today.getMonth()+1  
  var date=today.getDate()  
  var day=today.getDay()  
  var h=today.getHours()  
  var m=today.getMinutes()  
  var s=today.getSeconds()  
  // add a zero in front of numbers<10  
  h=checkTime(h)  
  m=checkTime(m)  
  s=checkTime(s)  
  document.getElementById('time').innerHTML=" "+year+"年"+month+"月"+date+"日  "+week[day]+"  "+h+":"+m+":"+s+" "  
  t=setTimeout('startTime()',500)  
  
 }  
 
 function checkTime(i){  
 if (i<10)   
   {i="0" + i}  
   return i  
 }  
</script>  
<body onload="startTime()">
	<div id="header">
		<h1>
			<a href="javascript:window.open('dashboard.html');">博苑幼儿园</a>
		</h1>
	</div>

	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav btn-group">
			<li>
				<a title="" href="">
					<i class="icon icon-user"></i>
					<span class="text">管理员</span>
				</a>
			</li>
			<li>
				<a title="" href="login.html">
					<i class="icon icon-share-alt"></i>
					<span class="text">退出</span>
				</a>
			</li>
		</ul>
	</div>

	<div id="sidebar">
		<ul>
			<li class="active">
				<a href="getshouye">
					<i class="icon icon-home"></i>
					<span>首页</span>
				</a>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>校园信息</span>
				</a>
				<ul>
					<li>
						<a href="test.html">教师风采</a>
					</li>
					<li>
						<a href="form-validation.html">幼儿作品</a>
					</li>
					<li>
						<a href="form-wizard.html">预约报名</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>考勤管理</span>
				</a>
				<ul>
					<li>
						<a href="test.html">教师考勤</a>
					</li>
					<li>
						<a href="form-validation.html">学生考勤</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>课表管理</span>
				</a>
				<ul>
					<li>
						<a href="test.html">教师课表</a>
					</li>
					<li>
						<a href="form-validation.html">班级课表</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>教务管理</span>
				</a>
				<ul>
					<li>
						<a href="stuinformation">幼儿管理</a>
					</li>
					<li>
						<a href="form-validation.html">教师信息管理</a>
					</li>
					<li>
						<a href="form-wizard.html">班级信息管理</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>教材管理</span>
				</a>
				<ul>
					<li>
						<a href="test.html">幼儿教材</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>收费管理</span>
				</a>
				<ul>
					<li>
						<a href="test.html">收费项目</a>
					</li>
					<li>
						<a href="form-validation.html">欠费记录</a>
					</li>
					<li>
						<a href="form-wizard.html">账单</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>校车管理</span>
				</a>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>日常事务管理</span>
				</a>
				<ul>
					<li>
						<a href="test.html">活动</a>
					</li>
					<li>
						<a href="form-validation.html">食谱</a>
					</li>
					<li>
						<a href="form-wizard.html">事故记录</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>报表统计</span>
				</a>
				<ul>
					<li>
						<a href="test.html">学生出勤</a>
					</li>
					<li>
						<a href="form-validation.html">职工出勤</a>
					</li>
					<li>
						<a href="form-wizard.html">膳食</a>
					</li>
				</ul>
			</li>
			<li class="submenu">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>权限分配</span>
				</a>
			</li>
		</ul>
	</div>

	<div id="content" >
		<div id="breadcrumb">
			<a href="" title="Go to Home" class="tip-bottom">
				<i class="icon-home"></i> 首页</a>
			<a href="" class="current">控制台</a>
			<a href="" class="current">控制台</a>
		</div>
		<div class="container-fluid">

	
		<div id="time"></div>
			<iframe  style="padding-top: 20px;padding-left: 20px" scrolling="no" height="54" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=10&icon=1&num=3"></iframe>
		</div>
		<!--手风琴图片展示-->
<div class="accordionBox">
    <ul>
        <li class="first on">
            <a href=""><img src="img/05.jpg" alt=""/></a>
        </li>
        <li >
            <a href=""><img src="img/04.jpg" alt=""/></a>
        </li>
        <li >
            <a href=""><img src="img/03.jpg" alt=""/></a>
        </li>
        <li >
            <a href=""><img src="img/02.jpg" alt=""/></a>
        </li>
        <li >
            <a href=""><img src="img/01.jpg" alt=""/></a>
        </li>
    </ul>
    </div>
</div>
<script>
    //手风琴动画效果
    $(function(){
        //执行动画
        var index = 0;
        $(".accordionBox").on("mouseover", "ul > li", function (e) {
            index = $(this).index();
            $(".accordionBox ul li").removeClass("on");
            $(this).stop().stop().addClass("on").animate({ width: 527 }, 400).siblings("li").stop().animate({ width: 100 }, 400);
            $(".imgCen").eq(index).css("display", "block").siblings(".imgCen").css("display", "none");
        });
    })
</script>
	
	

</body>
</html>