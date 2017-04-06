<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 院系管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
</head>

<body class="gray-bg">
	<!--添加院系-->
	<div class="modal inmodal" id="add_departModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                	<span style="font-size: 24px;">添加院系</span>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    
                    </div>
                    <div class="modal-body">
                    	<form class="form-horizontal" action="" method="post"> 
                    	<div class="form-group">
                            <label class="col-sm-3 control-label">院系名称：</label>
                            <div class="col-sm-8">
                                <input type="text" required="" aria-required="true" placeholder="院系名称" class="form-control"> 
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

	<!--修改院系-->
	
	<div class="modal inmodal" id="edit_departModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                	<span style="font-size: 24px;">修改院系信息</span>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    </div>
                    <div class="modal-body">
                    	<form class="form-horizontal" action="" method="post"> 
                    	<div class="form-group">
                            <label class="col-sm-3 control-label">院系名称：</label>
                            <div class="col-sm-8">
                                <input type="text" required="" aria-required="true" placeholder="院系名称" class="form-control"> 
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
    <button type="button" class="btn btn-primary btns" data-toggle="modal" data-target="#add_departModal">
	     添加院系
	</button>
  <!--  <button type="button" class="btn btn-primary btns" data-toggle="modal" data-target="#leadingin_teacherModal">
   		     批量导入
    </button> -->
   <button type="button" id="del_departsbtn" class="btn btn-danger btns del_ManyDepartById" disabled="disabled">
   		     批量删除
    </button>
    
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>院系列表</h5>
                   
                </div>
                <div class="ibox-content">

                    <table class="table table-striped table-bordered table-hover dataTables-departmanager">
                        <thead>
                        <tr>
                        	<th>
                        		<div class="checkbox i-checks" >
                                       <label><input type="checkbox" value="" id="deldeparts" ></label>
                            	</div>
                        	</th>
                            <th>部门编号</th>
                            <th>部门名称</th>
                            <th>创建时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="gradeX">
                        	 <td><input type="checkbox" value=""  onclick="chooseDepart(this)"></td>
                            <td>1415925033</td>
                            <td>软件学院
                            </td>
                            
                            <td class="center">2017-04-05 16:11:39</td>
                            <td class="center"> <a href="#" data-toggle="modal" data-target="#edit_departModal" ><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_departById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr>
                        <tr class="gradeC">
                        	 <td><input type="checkbox" value="" onclick="chooseDepart(this)"></td>
                            <td>1415925033</td>
                            <td>国医学院
                            </td>
                            <td class="center">2017-04-05 16:11:39</td>
                            <td class="center"> <a href="#" data-toggle="modal" data-target="#edit_departModal" ><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_departById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr>
                        <tr class="gradeA">
                        	 <td><input type="checkbox" value="" onclick="chooseDepart(this)"></td>
                            <td>1415925033</td>
                            <td>经管学院
                            </td>
                            <td class="center">2017-04-05 16:11:39</td>
                          <td class="center"> <a href="#" data-toggle="modal" data-target="#edit_departModal" ><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_departById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Page-Level Scripts -->
<script>

    $(document).ready(function () {
       $('.dataTables-departmanager').dataTable();
    });
    function fnClickAddRow() {
        $('#editable').dataTable().fnAddData([
            "Custom row",
            "New row",
            "New row",
            "New row",
            "New row"]);
    }
</script>
</body>

</html>
