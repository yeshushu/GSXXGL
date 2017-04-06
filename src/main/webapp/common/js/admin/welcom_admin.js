 $(document).ready(function () {
	/*$('.demo100').click(function () {
            swal({
                title: "您确定要删除这条信息吗",
                text: "删除后将无法恢复，请谨慎操作！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "删除",
                closeOnConfirm: false
            }, function () {
                swal("删除成功！", "您已经永久删除了这条信息。", "success");
            });
        });*/
        
        $("#coursedetail").hide();
});

/*课程通过*/
function passCourseById(){
	swal({
        title: "您确定要审批此课程",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "通过",
        cancelButtonText: "取消",
        closeOnConfirm: false,
        closeOnCancel: false
    }, function (isConfirm) {
        if (isConfirm) {
		    swal("审批成功！", "这门课已加入。", "success");
		} else {
		    swal("已取消", "您取消了此操作！", "error");
		}
    });
}

/*驳回课程*/
function rejectCourseById(){
	swal({
        title: "您确定要驳回此课程",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        closeOnConfirm: false,
        closeOnCancel: false
    }, function (isConfirm) {
        if (isConfirm) {
		    swal("已驳回！", "", "success");
		} else {
		    swal("已取消", "您取消了此操作！", "error");
		}
    });
}


function showCourseDetail(coursename,coursenum,coursecredit,courseperiod,courseintroduce){
	$("#course_name").text(coursename);
	$("#course_num").text(coursenum);
	$("#course_credit").text(coursecredit);
	$("#course_period").text(courseperiod);
	$("#course_introduce").text(courseintroduce);
	$("#coursedetail").show();
}
