<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto" id="navUl">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑用户病例</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item">用户病例管理</li>
								<li class="breadcrumb-item active">编辑用户病例</li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">用户病例信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
																					<div class="form-group col-md-6">
																								<label>病例编号</label>
												
																								<input id="binglibianhao" name="binglibianhao" class="form-control" v-model="ruleForm.binglibianhao" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>病例名称</label>
												
																								<input id="binglimingcheng" name="binglimingcheng" class="form-control" v-model="ruleForm.binglimingcheng" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>用户名</label>
												
																								<input id="yonghuming" name="yonghuming" class="form-control" v-model="ruleForm.yonghuming" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>姓名</label>
												
																								<input id="xingming" name="xingming" class="form-control" v-model="ruleForm.xingming" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>手机</label>
												
																								<input id="shouji" name="shouji" class="form-control" v-model="ruleForm.shouji" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>病情</label>
												
																								<input id="bingqing" name="bingqing" class="form-control" v-model="ruleForm.bingqing" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>检查项目</label>
												
																								<input id="jianchaxiangmu" name="jianchaxiangmu" class="form-control" v-model="ruleForm.jianchaxiangmu" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>检查结果</label>
												
																								<input id="jianchajieguo" name="jianchajieguo" class="form-control" v-model="ruleForm.jianchajieguo" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>药单</label>
												
																								<input id="yaodan" name="yaodan" class="form-control" v-model="ruleForm.yaodan" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
												
																								
																
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>注意事项</label>
												
																								<input id="zhuyishixiang" name="zhuyishixiang" class="form-control" v-model="ruleForm.zhuyishixiang" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>病例附件</label>
												
																									<button id="binglifujian">点击下载</button>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>日期</label>
												
																								<input id="riqi" name="riqi" class="form-control" v-model="ruleForm.riqi" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>医生工号</label>
												
																								<input id="yishenggonghao" name="yishenggonghao" class="form-control" v-model="ruleForm.yishenggonghao" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>职称</label>
												
																								<input id="zhicheng" name="zhicheng" class="form-control" v-model="ruleForm.zhicheng" readonly>
																							</div>
											
										
																																																																																																																																																																																																																																																																																																																																																																																													<div class="form-group  col-md-12">
												<label>医嘱</label>
												<script id="yizhuEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var yizhuUe = UE.getEditor('yizhuEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" name="yizhu" id="yizhu-input">
											</div>
																																																																																																																																																																																																																																															<div class="form-group col-md-6 mb-3">
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "yonghubingli";
		var pageType = "add-or-update";
		var updateId = "";		

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "yonghubingli/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 填充富文本框
		function setContent(){
																																																																if(ruleForm.yizhu != null && ruleForm.yizhu != 'null' && ruleForm.yizhu != ''){
					var mes = '' + ruleForm.yizhu;
					var yizhuUeditor = UE.getEditor('yizhuEditor');
					yizhuUeditor.ready(function() {
						yizhuUeditor.setContent(mes);
						yizhuUeditor.setDisabled('fullscreen');
					});
				}
																																						}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "yonghubingli/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();		
							setMediaUrl();	
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}	

		//图片显示
		function showImg(){
																																																																																																														}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}			
		// 下载
		function download(fileName){
			var url = baseUrl+'file/download?fileName='+fileName;
			window.open(url);
		}	
		//设置下载
		function setDownloadBtn(){
																																																																																									var binglifujianUrl = "download('" + ruleForm.binglifujian + "')";
					$("#binglifujian").attr("onclick",binglifujianUrl);
																														}			
		//设置音视频播放链接
		function setMediaUrl(){
																																																																																																														}	
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(url);
		}		
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>	
	</script>
</body>

</html>