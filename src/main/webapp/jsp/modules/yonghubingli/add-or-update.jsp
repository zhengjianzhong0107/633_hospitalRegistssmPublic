<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

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
		.error{
			color:red;
		}
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
							<ul id="navUl" class="navbar-nav mr-auto">
							
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
										<input id="binglibianhao" name="binglibianhao" class="form-control" value="" readonly>
									</div>
											<div class="form-group col-md-6">
										<label>病例名称</label>
										<input id="binglimingcheng" name="binglimingcheng" class="form-control" placeholder="病例名称">
									</div>
											<div class="form-group col-md-6">
										<label>用户名</label>
										<input id="yonghuming" name="yonghuming" class="form-control" placeholder="用户名">
									</div>
											<div class="form-group col-md-6">
										<label>姓名</label>
										<input id="xingming" name="xingming" class="form-control" placeholder="姓名">
									</div>
											<div class="form-group col-md-6">
										<label>手机</label>
										<input id="shouji" name="shouji" class="form-control" placeholder="手机">
									</div>
											<div class="form-group col-md-6">
										<label>病情</label>
										<input id="bingqing" name="bingqing" class="form-control" placeholder="病情">
									</div>
											<div class="form-group col-md-6">
										<label>检查项目</label>
										<input id="jianchaxiangmu" name="jianchaxiangmu" class="form-control" placeholder="检查项目">
									</div>
											<div class="form-group col-md-6">
										<label>检查结果</label>
										<input id="jianchajieguo" name="jianchajieguo" class="form-control" placeholder="检查结果">
									</div>
											<div class="form-group col-md-6">
										<label>药单</label>
										<input id="yaodan" name="yaodan" class="form-control" placeholder="药单">
									</div>
													<div class="form-group col-md-6">
										<label>注意事项</label>
										<input id="zhuyishixiang" name="zhuyishixiang" class="form-control" placeholder="注意事项">
									</div>
											<div class="form-group col-md-6">
										<label>病例附件</label>	
										<input name="file" type="file" class="form-control-file" id="binglifujianupload">
										<label id="binglifujianFileName"></label>
										<input name="binglifujian" id="binglifujian-input" type="hidden">
									</div>
											<div class="form-group col-md-6">
										<label>日期</label>
										<div id="riqiDate" class="input-append date form_datetime">
											<input id="riqi-input" name="riqi" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
											<div class="form-group col-md-6">
										<label>医生工号</label>
										<input id="yishenggonghao" name="yishenggonghao" class="form-control" placeholder="医生工号">
									</div>
											<div class="form-group col-md-6">
										<label>职称</label>
										<input id="zhicheng" name="zhicheng" class="form-control" placeholder="职称">
									</div>
													
																																																																																																																																																																																																																																																																																																																																																																																													<div class="form-group  col-md-12">
																							<label>医嘱</label>
																							<input id="yizhuupload" name="file" type="file">
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
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
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
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
		<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	


		var tableName = "yonghubingli";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};
																																																																													
					      				      				      				      				      				      				      				      				      				      				      				      				      				      				      	
								function binglibianhaoUuid(){
				if($("#binglibianhao").val() == null || $("#binglibianhao").val() == "null" || $("#binglibianhao").val() == ""){
					$("#binglibianhao").attr("value",Math.round(new Date().getTime()/1000));
				}
			}				
																																																																											
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

		// 文件上传
		function upload(){
																																																																											$('#yizhuupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('yizhuEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560>');					
						}
					});
																							$('#binglifujianupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {							
							document.getElementById('binglifujian-input').setAttribute('value',baseUrl+'file/download?fileName='+data.result.file);
							if(document.getElementById('binglifujianFileName') != null){
								document.getElementById('binglifujianFileName').innerHTML = "上传成功!";
							}		
							$("#binglifujianImg").attr("src",data.result.file);												
						}
					});
																														}  

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("yonghubingli/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
																																																																																																																																																																																																															if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.parent.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
																																																																if(ruleForm.yizhu != null && ruleForm.yizhu != 'null' && ruleForm.yizhu != ''){
					var yizhuMes = '' + ruleForm.yizhu;
					var yizhuUeditor = UE.getEditor('yizhuEditor');
					yizhuUeditor.ready(function() {
						yizhuUeditor.setContent(yizhuMes);
					});
				}
																																						}  

		// 获取富文本框内容
		function getContent(){
																																																																if(UE.getEditor('yizhuEditor').hasContents()){
					$('#yizhu-input').attr('value',UE.getEditor('yizhuEditor').getPlainTxt());
				}
																																						}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
					           				       			 	           										    binglimingcheng: {
														},
						       			 	           										    yonghuming: {
														},
						       			 	           										    xingming: {
														},
						       			 	           										    shouji: {
														},
						       			 	           										    bingqing: {
														},
						       			 	           										    jianchaxiangmu: {
														},
						       			 	           										    jianchajieguo: {
														},
						       			 	           										    yaodan: {
														},
						       			 	           										    yizhu: {
														},
						       			 	           										    zhuyishixiang: {
														},
						       			 	           										    binglifujian: {
														},
						       			 	           										    riqi: {
														},
						       			 	           										    yishenggonghao: {
														},
						       			 	           										    zhicheng: {
														},
						       			 					},
				messages: {
																													binglimingcheng: {
														},
																								yonghuming: {
														},
																								xingming: {
														},
																								shouji: {
														},
																								bingqing: {
														},
																								jianchaxiangmu: {
														},
																								jianchajieguo: {
														},
																								yaodan: {
														},
																								yizhu: {
														},
																								zhuyishixiang: {
														},
																								binglifujian: {
														},
																								riqi: {
														},
																								yishenggonghao: {
														},
																								zhicheng: {
														},
															}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("yonghubingli/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
																																																																																																																																																																																																																					//注册表单验证
						$(validform());	
					}
				});
			}else{
															binglibianhaoUuid();
																																																																																																																																							
							 		fill()
								//注册表单验证
		    	$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
																																																																																																														}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
																																																																																																															
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
																																																																																															$("#riqiDate").datetimepicker({ 
					minView: "month",
					autoclose: true,
					format:'yyyy-mm-dd',
					language:'zh-CN',
				});
																					
		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
																																																																																																														}		
		function calculationSE(colName){
			//单列求和接口
			http("yonghubingli"+colName,"GET",{
				tableName: "yonghubingli",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
																																																																																																														}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
																				if(res.data !=null && res.data.yishenggonghao != null && res.data.yishenggonghao != ''){
							$('#yishenggonghao').val(res.data.yishenggonghao)
						}
								if(res.data !=null && res.data.zhicheng != null && res.data.zhicheng != ''){
							$('#zhicheng').val(res.data.zhicheng)
						}
							$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
												$("#binglibianhao").val(ruleForm.binglibianhao);	
																$("#binglimingcheng").val(ruleForm.binglimingcheng);	
																$("#yonghuming").val(ruleForm.yonghuming);	
																$("#xingming").val(ruleForm.xingming);	
																$("#shouji").val(ruleForm.shouji);	
																$("#bingqing").val(ruleForm.bingqing);	
																$("#jianchaxiangmu").val(ruleForm.jianchaxiangmu);	
																$("#jianchajieguo").val(ruleForm.jianchajieguo);	
																$("#yaodan").val(ruleForm.yaodan);	
																$("#yizhu").val(ruleForm.yizhu);	
																$("#zhuyishixiang").val(ruleForm.zhuyishixiang);	
																$("#binglifujian-input").val(ruleForm.binglifujian);
					$("#binglifujianFileName").html(ruleForm.binglifujian);
																$("#riqi-input").val(ruleForm.riqi);
																$("#yishenggonghao").val(ruleForm.yishenggonghao);	
																$("#zhicheng").val(ruleForm.zhicheng);	
									}		
		//图片显示
		function showImg(){
																																																																																																														}		
		//跨表

        //跨表
        function crossTable(){
            crossTableName = window.sessionStorage.getItem('crossTableName');
			crossTableId = window.sessionStorage.getItem('crossTableId');
            if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
				http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
					if(res.code == 0){
						crossRuleForm = res.data;
						$('#updateId').val(crossTableId);
												if(res.data != null && res.data != '' && res.data.binglibianhao != null && res.data.binglibianhao != ''){

															$("#binglibianhao").val(res.data.binglibianhao);
													}
												if(res.data != null && res.data != '' && res.data.binglimingcheng != null && res.data.binglimingcheng != ''){

															$("#binglimingcheng").val(res.data.binglimingcheng);
													}
												if(res.data != null && res.data != '' && res.data.yonghuming != null && res.data.yonghuming != ''){

															$("#yonghuming").val(res.data.yonghuming);
													}
												if(res.data != null && res.data != '' && res.data.xingming != null && res.data.xingming != ''){

															$("#xingming").val(res.data.xingming);
													}
												if(res.data != null && res.data != '' && res.data.shouji != null && res.data.shouji != ''){

															$("#shouji").val(res.data.shouji);
													}
												if(res.data != null && res.data != '' && res.data.bingqing != null && res.data.bingqing != ''){

															$("#bingqing").val(res.data.bingqing);
													}
												if(res.data != null && res.data != '' && res.data.jianchaxiangmu != null && res.data.jianchaxiangmu != ''){

															$("#jianchaxiangmu").val(res.data.jianchaxiangmu);
													}
												if(res.data != null && res.data != '' && res.data.jianchajieguo != null && res.data.jianchajieguo != ''){

															$("#jianchajieguo").val(res.data.jianchajieguo);
													}
												if(res.data != null && res.data != '' && res.data.yaodan != null && res.data.yaodan != ''){

															$("#yaodan").val(res.data.yaodan);
													}
												if(res.data != null && res.data != '' && res.data.yizhu != null && res.data.yizhu != ''){

															$("#yizhu").val(res.data.yizhu);
													}
												if(res.data != null && res.data != '' && res.data.zhuyishixiang != null && res.data.zhuyishixiang != ''){

															$("#zhuyishixiang").val(res.data.zhuyishixiang);
													}
												if(res.data != null && res.data != '' && res.data.binglifujian != null && res.data.binglifujian != ''){

															$("#binglifujian-input").val(res.data.binglifujian);
								$('#binglifujianFileName').val(res.data.binglifujian)
													}
												if(res.data != null && res.data != '' && res.data.riqi != null && res.data.riqi != ''){

															$("#riqi-input").val(res.data.riqi);
								$('#riqiFileName').val(res.data.riqi)
													}
												if(res.data != null && res.data != '' && res.data.yishenggonghao != null && res.data.yishenggonghao != ''){

															$("#yishenggonghao").val(res.data.yishenggonghao);
													}
												if(res.data != null && res.data != '' && res.data.zhicheng != null && res.data.zhicheng != ''){

															$("#zhicheng").val(res.data.zhicheng);
													}
											}
				});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
																																																																																																																																																																														},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
																																																																																																															return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			readonly();
					});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
																																																																																																if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>