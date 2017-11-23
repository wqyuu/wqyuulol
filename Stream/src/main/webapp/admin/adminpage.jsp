<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Weplay后台管理系统</title>
<link rel="stylesheet" href="../csss/bootstrap.min.css">
<script src="../jss/jquery.min.js"></script>
<script src="../jss/bootstrap.min.js"></script>
<script type="text/javascript" src="../jss/adminpage.js"></script>
<link type="text/css" rel="stylesheet" href="../csss/adminpage.css" />
<link rel="icon" href="../smile.ico" type="image/x-icon">
</head>

<body>
	<div class="top"></div>
	<div id="header">
		<div class="logo">
			Weplay后台管理系统<span style="font-size: 12px; margin-left: 500px;">欢迎
				admin<%-- ${admin.Apass} --%>！！
			</span>
		</div>
	</div>
	<div id="content">
		<div class="left_menu">
			<ul id="nav_dot">
				<li>
					<h4 class="M1">
						<span></span><a href="javascript:ajaxuser();" class="M1" style="color: white">用户管理</a>
					</h4>
					<div class="list-item none">
						<a href="#" onclick="showright_0()" style="color: white">信息展示</a>
					</div>
				</li>
				<li>
					<h4 class="M2">
						<span></span><a href="javascript:postkind();" class="M1" style="color: white">种类管理</a>
					</h4>
					<div class="list-item none">
						<a href="#" onclick="showright_3()">信息展示</a>
					</div>
				</li>
				<li>
					<h4 class="M3">
						<span></span>游戏管理
					</h4>
					<div class="list-item none">
						<a href="#" onclick="showright_1()">信息展示</a>
					</div>
					<div class="list-item none">
						<a href="#" onclick="showright_2()">添加游戏</a>
					</div>
				</li>

			</ul>
		</div>
		<div class="m-right" id="right_0">
			<div class="main">
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<table class="table">
								<thead>
									<tr>
										<th>用户编号</th>
										<th>用户名</th>
										<%--<th>--%>
										<%--密码--%>
										<%--</th>--%>
										<th>昵称</th>
										<th>邮箱</th>
										<th>手机号</th>
										<th>创建时间</th>
										<th>用户状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody id="userInfo">
								</tbody>
							</table>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="pagination pagination-right yema divsetcenter">
									<ul id="paging_0">

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="m-right" id="right_1">
			<div class="main">
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<table class="table">
								<thead>
									<tr>
										<th>游戏编号</th>
										<th>游戏名</th>
										<th>价格</th>
										<th>状态</th>
										<th>操作</th>


									</tr>
								</thead>
								
								<tbody id="gameInfo">

								</tbody>
							</table>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="pagination pagination-right yema divsetcenter">
									<ul id="paging_1">

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="m-right" id="right_2">
			<div class="main setmargin">
				<form method="post" name="game_info" id="game_info"
					enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/upload.do">


					<h5>开发商</h5>
					<input type="text " class="form-control" placeholder="Create"
						id="addgamecreater" name="creater">


					<h5>游戏名称</h5>
					<input type="text" class="form-control" placeholder="Name"
						id="addgamename" name="name">


					<h5>游戏描述</h5>
					<textarea class="form-control" placeholder="Desc" id="addgamedesc"
						name="comm"></textarea>


					<h5>系统配置</h5>
					<textarea class="form-control" placeholder="Systemcfg"
						id="addgamesyscfg" name="systemcfg"></textarea>


					<h5>游戏价格</h5>
					<input type="text" class="form-control" placeholder="Price"
						id="addgameprice" name="price">


					<h5>游戏折扣后价格</h5>
					<input type="text" class="form-control" placeholder="Discont"
						id="addgamediscount" name="discount">


					<h5>上传游戏封面(1张)</h5>
					<input type="file" id="doc_0" style="width: 150px;"
						accept="image/*" onchange="setImagePreviews_0();" name="file">
					<div id="dd_0" ></div>


					<!-- <div class=" setmargin_0">
						<h5>上传游戏截图(至少5张)</h5>
						<input type="file" id="doc" multiple="multiple"
							style="width: 150px;" onchange="setImagePreviews();"
							accept="image/*" name="pics">
						<div id="dd"></div>
					</div> -->
				

				<div class=" setmargin_0">
					<button class="btn" id="addgamebtn" type="submit"
						onclick="addgame()">确认添加</button>
					<button class="btn" type="reset" onclick="cleartext()">重置内容</button>
				</div>
				</form>
			</div>
		</div>

		<div class="m-right" id="right_3">
			<div class="main">
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<table class="table">
								<thead>
									<tr>
										<th>种类编号</th>
										<th>种类名</th>
										<th>操作</th>
									</tr>
									<tr>
										<th>0</th>
										<th><input type="text" id="addkindinput"></th>
										<th>
											<button class="btn" onclick="addkind()">添加</button>
										</th>
									</tr>
								</thead>
								<tbody id="kind_all">
									<!-- <th id='kindid_" + j + "'>1</th>
									<th id='kindname_" + j + "'>休闲</th>
									<th><button type='button' class='btn' data-toggle='modal'
											data-target='#myModal_2' onclick='managekind(" + kid + ")'>
											管理</button>
										<div class='modal fade' id='myModal_2' tabindex='-1'
											role='dialog' aria-labelledby='myModalLabel'>
											<div class='modal-dialog' role='document'>
												<div class='modal-content'>
													<div class='modal-header'>
														<button type='button' class='close' data-dismiss='modal'
															aria-label='Close'>
															<span aria-hidden='true'>&times;</span>
														</button>
														<h4 class='modal-title' id='myModalLabel'>种类管理</h4>
													</div>
													<div class='modal-body'>
														<p>
															种类编号<input type='text' readOnly='true'
																class='inputmargin_2' id='kindgameid" + "'>
														</p>
														<br>
														<p>
														<div id='kindgame'>
															<br>
															<input type='checkbox' class='gamebox'
																id='kind_" + kid + "_" + j + "'>滨海
														</div>
														</p>
														<br>
													</div>
													<div class='modal-footer' id='savebtn'>
														<button type='button' class='btn btn-default'
															data-dismiss='modal'>取消</button>
														<button type='button' class='btn btn-primary'
															onclick='savekindsgames(" + ")'>保存</button>
													</div>
												</div>
											</div>
										</div>
									</th> -->
								</tbody>
							</table>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="pagination pagination-right yema divsetcenter">
									<ul id="paging_3">

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>

	<div class="bottom"></div>
	<div id="footer">
		<p>
			最终所有权归<a href="" target="_blank">Weplay</a>所有
		</p>
	</div>
	<script>
		navList(12);
	</script>
</body>
</html>
