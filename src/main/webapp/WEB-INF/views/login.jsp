<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>云中实验室 - 登录</title>
    <meta name="keywords" content="">
    <meta name="description" content="">


    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
       /* if (window.top !== window.self) {
            window.top.location = window.location;
        }*/
    </script>

</head>

<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-12">
            <form action="${ctx}/login" method="post">
                <h3 class="no-margins">欢迎使用教师管理系统</h3>
				<!--<p class="m-t-md">登录到H+后台主题UI框架</p>-->
                <input name="userName" type="text" class="form-control uname" required="required" placeholder="用户名" />
                <input name="password" type="password" class="form-control pword m-b" required="required" placeholder="密码" />

                <select name="userRole" class="form-control input-sm input-s-sm">
                    <option value="2" hassubinfo="true">教师</option>
                    <option value="1" hassubinfo="true">管理员</option>
                </select>
                <br />
                <a href="#">忘记密码了？</a>
                <button class="btn btn-success btn-block">登录</button>
            </form>
        </div>
    </div>
    <div class="signup-footer" >
        <div class="pull-left">
            &copy; 技术支持 : 北京奇观技术有限公司
        </div>
    </div>
</div>
</body>
</html>
