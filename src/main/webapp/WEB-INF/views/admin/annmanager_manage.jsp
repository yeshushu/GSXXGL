<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> - 公告管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
</head>

<body class="gray-bg">
	
	<!--修改公告-->
	<div class="modal inmodal" id="edit_announcementModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                	
                	<span style="font-size: 24px;">编辑公告</span>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    
                    </div>
                    <div class="modal-body">
                   <form class="form-horizontal" action="" method="post"> 
                    	<div class="form-group">
                            <label class="col-sm-3 control-label">标题：</label>
                            <div class="col-sm-8">
                                <input type="text" required="" aria-required="true" placeholder="标题" class="form-control"> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">内容：</label>
                            <div class="col-sm-8">
                                <textarea required="" aria-required="true" placeholder="内容" class="form-control"></textarea>
                            </div>
                        </div>
			            <div class="modal-footer">
	                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
	                        <button type="submit" class="btn btn-primary">保存</button>
               		    </div>
				       </form>
                    </div>
                </div>
            </div>
        </div>
	<!--添加公告-->
	<div class="modal inmodal" id="add_announcementModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                	<span style="font-size: 24px;">添加公告</span>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    
                    </div>
                    <div class="modal-body">
                    <form class="form-horizontal" action="" method="post"> 
                    	<div class="form-group">
                            <label class="col-sm-3 control-label">标题：</label>
                            <div class="col-sm-8">
                                <input type="text" required="" aria-required="true" placeholder="标题" class="form-control"> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">内容：</label>
                            <div class="col-sm-8">
                                <textarea required="" aria-required="true" placeholder="内容" class="form-control"></textarea>
                            </div>
                        </div>
			            <div class="modal-footer">
	                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
	                        <button type="submit" class="btn btn-primary">保存</button>
               		    </div>
				       </form>
                    </div>    
                </div>
            </div>
        </div>
    
    	 <button type="button" class="btn btn-primary" style="margin: 10px 20px;float: right;" data-toggle="modal" data-target="#add_announcementModal">
       		    添加公告
        </button>
        
    
</div>


 <div class="row">  <!-- 公告 详情-->
<div class="col-sm-12">
    <div class="ibox">
        <div class="ibox-title">
            <h5>公告列表</h5>
            
        </div>
        <div class="ibox-content">
            <div class="row m-b-sm m-t-sm">
                <div class="col-md-1">
                    <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                </div>
                <div class="col-md-11">
                    <div class="input-group">
                        <input type="text" placeholder="请输入公告标题、公告发起人" class="input-sm form-control"> <span class="input-group-btn">
                            <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                    </div>
                </div>
            </div>
            <div class="project-list">
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td class="project-status">
                                <span class="label label-danger">
                                	<i class="fa fa-volume-up"></i>&nbsp;&nbsp;公告1
                            </span></td>
                             <td class="project-title">
                                	标题1
                            </td>
                            <td class="project-title">
                                	java web高级编程
                                <br>
                                <small>创建于 2014.08.15</small>
                            </td>
                           <td class="project-people">
                           	叶振全
                            </td>
                            <td class="project-actions">
                                <button class="btn btn-white btn-sm" onclick="editAnnouncement()" data-toggle="modal" data-target="#edit_announcementModal"><i class="fa fa-edit"></i>编辑</button>
                                <button class="btn btn-white btn-sm" onclick="removeAnnouncement()"><i class="glyphicon glyphicon-remove"></i>删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="project-status">
                              <span class="label label-danger">
                                	<i class="fa fa-volume-up"></i>&nbsp;&nbsp;公告2
                            </span></td>
                             <td class="project-title">
                                	标题2
                            </td>
                            <td class="project-title">
                                	java web高级编程
                                <br>
                                <small>创建于 2014.08.15</small>
                            </td>
                           <td class="project-people">
                           	叶振全
                            </td>
                            <td class="project-actions">
                               <button class="btn btn-white btn-sm" onclick="editAnnouncement()" data-toggle="modal" data-target="#edit_announcementModal"><i class="fa fa-edit"></i>编辑</button>
                                <button class="btn btn-white btn-sm" onclick="removeAnnouncement()"><i class="glyphicon glyphicon-remove"></i>删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="project-status">
                                <span class="label label-danger">
                                	<i class="fa fa-volume-up"></i>&nbsp;&nbsp;公告3
                            </span></td>
                            <td class="project-title">
                                	标题3
                            </td>
                            <td class="project-title">
                                	数据库技术应用
                                <br>
                                <small>创建于 2014.08.15</small>
                            </td>
                           <!-- <td class="project-completion">
                                    <small>当前进度： 48%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                            </td>-->
                           <td class="project-people">
                           		叶振全
                            </td>
                            <td class="project-actions">
                                <button class="btn btn-white btn-sm" onclick="editAnnouncement()" data-toggle="modal" data-target="#edit_announcementModal"><i class="fa fa-edit"></i>编辑</button>
                                <button class="btn btn-white btn-sm" onclick="removeAnnouncement()"><i class="glyphicon glyphicon-remove"></i>删除</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Page-Level Scripts -->
<script>
    
</script>
</body>
</html>
