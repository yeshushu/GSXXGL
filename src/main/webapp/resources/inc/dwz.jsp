<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/resources/inc/taglib.jsp"%>

<link href="${path}/resources/dwz/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${path}/resources/dwz/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${path}/resources/dwz/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="${path}/resources/dwz/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>

<style type="text/css">
	#header{height:85px}
	#leftside, #container, #splitBar, #splitBarProxy{top:90px}
</style>

<script src="${path}/resources/dwz/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/jquery.cookie.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/jquery.validate.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/xheditor/xheditor-1.2.2.min.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/uploadify/scripts/jquery.uploadify.min.js" type="text/javascript"></script>

<!-- svg图表  supports Firefox 3.0+, Safari 3.0+, Chrome 5.0+, Opera 9.5+ and Internet Explorer 6.0+ -->
<script type="text/javascript" src="${path}/resources/dwz/chart/raphael.js"></script>
<script type="text/javascript" src="${path}/resources/dwz/chart/g.raphael.js"></script>
<script type="text/javascript" src="${path}/resources/dwz/chart/g.bar.js"></script>
<script type="text/javascript" src="${path}/resources/dwz/chart/g.line.js"></script>
<script type="text/javascript" src="${path}/resources/dwz/chart/g.pie.js"></script>
<script type="text/javascript" src="${path}/resources/dwz/chart/g.dot.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6PYkS1eDz5pMnyfO0jvBNE0F"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/Heatmap/2.0/src/Heatmap_min.js"></script>

<script src="${path}/resources/dwz/js/dwz.core.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.util.date.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.validate.method.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.barDrag.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.drag.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.tree.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.accordion.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.ui.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.theme.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.switchEnv.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.alertMsg.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.contextmenu.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.navTab.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.tab.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.resize.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.dialog.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.dialogDrag.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.sortDrag.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.cssTable.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.stable.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.taskBar.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.ajax.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.pagination.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.database.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.datepicker.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.effects.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.panel.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.checkbox.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.history.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.combox.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.print.js" type="text/javascript"></script>

<script src="${path}/resources/dwz/bin/dwz.min.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="${path}/resources/dwz/js/highcharts.js" type="text/javascript"></script>