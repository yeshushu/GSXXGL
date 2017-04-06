<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/resources/inc/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--[if IE]>
<link href="${path}/resources/dwz/themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]  -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src=”http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js”></script>
<![endif]-->
<%@include file="/resources/inc/dwz.jsp"%>
<title>金冠电阻片数据分析系统</title>

<script type="text/javascript">
$(function(){
	DWZ.init("${path}/resources/dwz/xml/dwz.frag.xml", {
		loginUrl:"${path}/login_dialog", loginTitle:"登录",	// 弹出登录对话框
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		keys: {statusCode:"statusCode", message:"message"}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"resources/dwz/themes"});
			//setTimeout(function() {$("#sidebar .toggleCollapse div").trigger("click");}, 10);
		}
	});
});
</script>

</head>

<body scroll="no">
	<div id="layout">
      	<!-- lefter start -->
      	<%@include file="login.jsp"%>
      	<!-- lefter end -->
	</div>
</body>
</html>