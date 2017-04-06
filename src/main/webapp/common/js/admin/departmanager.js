 $(document).ready(function () {

	$('.del_ManyDepartById').click(function () {
	            swal({
	                        title: "您确定要删除这些信息吗",
	                        text: "删除后将无法恢复，请谨慎操作！",
	                        type: "warning",
	                        showCancelButton: true,
	                        confirmButtonColor: "#DD6B55",
	                        confirmButtonText: "是的，我要删除！",
	                        cancelButtonText: "让我再考虑一下…",
	                        closeOnConfirm: false,
	                        closeOnCancel: false
	                    },
	                     function (isConfirm) {
	                    	if (isConfirm) {
	                    	var id = new Array();
			                $("input[type=checkbox]:gt(0)").each(function(){
		
								if($(this).prop("checked")==true){
									 id.push($(this).val());
								}
		
							})
	                            swal("删除成功！", "您已经永久删除了这条信息。", "success");
	                        } else {
	                            swal("已取消", "您取消了删除操作！", "error");
	                        }
	                    });
	  });
	  
	  $("#deldeparts").click(function(){
		if($("#deldeparts").is(":checked")==true){
		 $("input[type='checkbox']").prop('checked',true);
		 $("#del_departsbtn").prop("disabled",false);
		}else{
		 $("input[type='checkbox']").prop('checked',false);
		 $("#del_departsbtn").prop("disabled",true);
		}
	});
	
	
	

});

function del_departById (){
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
        }


function chooseDepart(dom){
	var count=0;
	$("input[type=checkbox]:gt(0)").each(function(){
		
		if($(this).prop("checked")==true){
			count++;
		}
		
	})
	if(count>0){
		$("#del_departsbtn").prop("disabled",false);
	}else{
		$("#del_departsbtn").prop("disabled",true);
	}
		
}
