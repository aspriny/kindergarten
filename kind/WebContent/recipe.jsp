<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<link rel="stylesheet" href="css/fullcalendar.css">
	<link rel="stylesheet" href="css/unicorn.main.css">
	<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color">
	<link rel="stylesheet" href="css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function getIdi(obj){
	var id=$(obj).parent().parent().children("td:eq(0)").text();
	$("input[ name='id' ] ").prop("value",id);
	var week=$(obj).parent().parent().children("td:eq(1)").text();
	$("input[ name='week' ] ").prop("value",week);
	var breakfast=$(obj).parent().parent().children("td:eq(2)").text();
	$("input[ name='breakfast' ] ").prop("value",breakfast);
	var lunch=$(obj).parent().parent().children("td:eq(3)").text();
	$("input[ name='lunch' ] ").prop("value",lunch);
	var supper=$(obj).parent().parent().children("td:eq(4)").text();
	$("input[ name='supper' ] ").prop("value",supper);
}
</script>
</head>
<c:if test="${listRecipe==null}">
	<c:redirect url="recipe"></c:redirect>
</c:if>
<body>
<div id="header">
		<h1>
			<a href="javascript:window.open('dashboard.html');">张成幼儿园</a>
		</h1>
	</div>
	<div id="sidebar">
		<a href="" class="visible-phone">
			<i class="icon icon-home"></i> 首页</a>
		<ul>
			<li>
				<a href="">
					<i class="icon icon-home"></i>
					<span>首页</span>
				</a>
			</li>
			<li>
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>校园信息</span>
				</a>
				<ul>
					<li class="active">
						<a href="">教师风采</a>
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
						<a href="test.html">幼儿管理</a>
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
			<li class="active submenu open">
				<a href="">
					<i class="icon icon-th-list"></i>
					<span>日常事务管理</span>
				</a>
				<ul>
					<li>
						<a href="activity.jsp">活动</a>
					</li>
					<li  >
						<a href="recipe.jsp">食谱</a>
					</li>
					<li>
						<a href="accident.jsp">事故记录</a>
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
				</ul>
		</ul>
	</div>

	<div id="style-switcher">
		<i class="icon-arrow-left icon-white"></i>
		<span>Style:</span>
		<a href="" style="background-color: #555555; border-color: #aaaaaa;"></a>
		<a href="" style="background-color: #2D2F57;"></a>
		<a href="" style="background-color: #673232;"></a>
	</div>

	<div id="content">
		<div id="breadcrumb">
			<a href="" title="Go to Home" class="tip-bottom">
				<i class="icon-home"></i> 首页</a>
			<a href="" class="current">控制台</a>
			<a href="" class="current">控制台</a>
		</div>
		<div class="bs-example" data-example-id="contextual-table">
		<table class="table table-bordered" contenteditable="true">
                  <thead>
                    <tr>
	                    <th>编号</th>
				        <th>星期几</th>
				        <th>早餐</th>
	                    <th>午餐</th>
	                    <th>晚餐</th>
	                    <th>操作</th>
                    </tr>
                  </thead>
                  <tbody>
                   <c:forEach items="${listRecipe}" var="stu">
                    <tr class="success">
                       <td><input type='checkbox' name="id" value="${stu.id}"  >${stu.id}</td>
                       <td>${stu.week}</td>
                       <td>${stu.breakfast }</td>
                       <td>${stu.lunch }</td>
                       <td>${stu.supper }</td>
                       <td>
                       <button class="btn btn-info" data-toggle="modal" data-target="#myModal" onclick="getIdi(this)">修改</button>
	                   <a href="recipeDelete?id=${stu.id}" class="btn btn-info" data-toggle="tooltip" title="是否删除">删除</a>
                       </td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
                  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<form  action="recipeModification" method="GET">
								<label >编号</label>
											<input type="text" class="form-control" name="id"  value="${stu.id}" placeholder="请输入编号">
										<label >星期几</label>
										<input type="text" class="form-control"  name="week"  value="${stu.week}" placeholder="请输入星期几">
										<label >早餐</label>
										<input type="text" class="form-control"   name="breakfast"  value="${stu.breakfast}" placeholder="请输入早餐">
										<label >午餐</label>
										<input type="text" class="form-control" name="lunch"  value="${stu.lunch}"placeholder="请输入午餐">
										<label >晚餐</label>
										<input type="text" class="form-control"name="supper"  value="${stu.supper}" placeholder="请输入晚餐">
									<div class="modal-footer">
										<input  type="submit" class="btn btn-primary"  value="提交" >
								        <button type="button" class="btn btn-default" data-dismiss="modal">取消
								       </button>
							</div>
								 </form>
							</div>
							
						</div>
					</div>
				</div>
  </div>
	</div>
	<script>
      $(function () { $('.tooltip-show').tooltip('show');});
      $(function () { $('.tooltip-show').on('show.bs.tooltip', function () {
	   alert("Alert message on show");
        })});
    </script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.ui.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-colorpicker.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.uniform.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/unicorn.js"></script>
	<script src="js/unicorn.form_common.js"></script>
</body>
</html>
