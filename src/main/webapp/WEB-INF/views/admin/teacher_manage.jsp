<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 教师管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

</head>

<body class="gray-bg">
	<!--添加教师-->
	<div class="modal inmodal" id="add_teacherModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                	<span style="font-size: 24px;">添加教师信息</span>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    
                    </div>
                    <div class="modal-body">
                    	<form class="form-horizontal" action="" method="post"> 
                    	<div class="form-group">
                            <label class="col-sm-3 control-label">教师姓名：</label>
                            <div class="col-sm-8">
                                <input type="text" required="" aria-required="true" placeholder="教师姓名" class="form-control"> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">教工号：</label>
                            <div class="col-sm-8">
                                <input type="text" required="" aria-required="true" placeholder="教工号" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">手机号：</label>
                            <div class="col-sm-8">
                                <input type="text" placeholder="手机号" class="form-control"> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Email：</label>
                            <div class="col-sm-8">
                                <input type="email" placeholder="Email" class="form-control">
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-3 control-label ">性别：</label>
                            <div class="col-sm-8">
                                <select class="form-control" name="">
                                    <option>男</option>
                                    <option>女</option>
                                </select>
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
	<!--导入教师模态框-->
	<div class="modal inmodal" id="leadingin_teacherModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    <button type="button" class="btn btn-primary">下载模板</button>
                    </div>
                    <div class="modal-body">
                        <p><strong></strong>导入之前请下载参考模板</p>
                                <div class="form-group"><label>文件</label> <input type="file" placeholder="excel表格" class="form-control"></div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary">保存</button>
                    </div>
                </div>
            </div>
        </div>

    <button type="button" class="btn btn-primary btns" data-toggle="modal" data-target="#add_teacherModal">
	     添加教师
	</button>
    <button type="button" class="btn btn-primary btns" data-toggle="modal" data-target="#leadingin_teacherModal">
   		     批量导入
    </button> 
   <button type="button" id="del_teachersbtn" class="btn btn-danger btns del_ManyteacherById" disabled="disabled">
   		     批量删除
    </button>
    
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>教师列表</h5>
                   
                </div>
                <div class="ibox-content">

                    <table class="table table-striped table-bordered table-hover dataTables-teachermanager">
                        <thead>
                        <tr>
                        	<th>
                        		<div class="checkbox i-checks" >
                                       <label><input type="checkbox" value="" id="delteachers" ></label>
                            	</div>
                        	</th>
                        	<th>教工号</th>
                            <th>教师姓名</th>
                            <th>年龄</th>
                            <th>家庭住址</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>  
                        
                        <tr class="gradeX">
                        	 <td><input type="checkbox" value=""  onclick="chooseTeacher()"></td>
                            <td>1415925022</td>
                            <td>叶振全
                            </td>
                            <td>40</td>
                            <td class="center">河南南阳</td>
                            <td class="center"><a href="teacher_detail.html"><i class="glyphicon glyphicon-info-sign"></i></a>&nbsp;&nbsp;&nbsp;<a href="teacher_editl.html"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_teacherById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr>
                        
                        
                        <!-- <tr class="gradeX">
                        	 <td><input type="checkbox" value=""  onclick="chooseTeacher()"></td>
                            <td>1415925022</td>
                            <td>叶振全
                            </td>
                            <td>40</td>
                            <td class="center">河南南阳</td>
                            <td class="center"><a href="teacher_detail.html"><i class="glyphicon glyphicon-info-sign"></i></a>&nbsp;&nbsp;&nbsp;<a href="teacher_editl.html"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_teacherById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr>
                        <tr class="gradeX">
                        	 <td><input type="checkbox" value=""  onclick="chooseTeacher()"></td>
                            <td>1415925022</td>
                            <td>叶振全
                            </td>
                            <td>40</td>
                            <td class="center">河南南阳</td>
                            <td class="center"> <a href="teacher_detail.html"><i class="glyphicon glyphicon-info-sign"></i></a>&nbsp;&nbsp;&nbsp;<a href="teacher_editl.html"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_teacherById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr>
                        <tr class="gradeX">
                        	 <td><input type="checkbox" value=""  onclick="chooseTeacher()"></td>
                            <td>1415925022</td>
                            <td>叶振全
                            </td>
                            <td>40</td>
                            <td class="center">河南南阳</td>
                            <td class="center"> <a href="teacher_detail.html"><i class="glyphicon glyphicon-info-sign"></i></a>&nbsp;&nbsp;&nbsp;<a href="teacher_editl.html"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="del_teacherById()"><i class="glyphicon glyphicon-trash"></i></a></td>
                        </tr> -->
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="../../common/js/jquery.min.js?v=2.1.4"></script>
<script src="../../common/js/bootstrap.min.js?v=3.3.6"></script>

<script src="../../common/js/plugins/jeditable/jquery.jeditable.js"></script>
<!--自定义js-->
<script src="../../common/js/admin/teachermanager.js"></script>
<!-- Data Tables -->
<script src="../../common/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="../../common/js/plugins/dataTables/dataTables.bootstrap.js"></script>
<!--sweetalert-->
<script src="../../common/js/plugins/sweetalert/sweetalert.min.js"></script>
 <!-- jQuery Validation plugin javascript-->
<script src="../../common/js/plugins/validate/jquery.validate.min.js"></script>
<script src="../../common/js/plugins/validate/messages_zh.min.js"></script>

<!-- Page-Level Scripts -->
<script>

    $(document).ready(function () {
       $('.dataTables-teachermanager').dataTable();

        /* Init DataTables */
        /*var oTable = $('#editable').dataTable();*/

        /* Apply the jEditable handlers to the table */
       /* oTable.$('td').editable('../example_ajax.php', {
            "callback": function (sValue, y) {
                var aPos = oTable.fnGetPosition(this);
                oTable.fnUpdate(sValue, aPos[0], aPos[1]);
            },
            "submitdata": function (value, settings) {
                return {
                    "row_id": this.parentNode.getAttribute('id'),
                    "column": oTable.fnGetPosition(this)[2]
                };
            },

            "width": "90%",
            "height": "100%"
        });*/


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
