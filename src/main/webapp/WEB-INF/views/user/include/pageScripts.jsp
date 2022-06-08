<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">
logOut = function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		,success: function(response) {
			if(response.rt == "success") {
				socket.send(JSON.stringify({"type" : "LeaveSpace"}));
				location.href="/login/userLogin";
			} else {
				alert("로그아웃 실패");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	
}
</script>

<script type="text/javascript">

	const icon = document.querySelector("#sidebarIcon");
	icon.innerText = "<c:out value="${hyspName}"/>".charAt(0);
	
	const bg = localStorage.getItem("backUrl");
	
	if(bg == 1){
		icon.classList.add("bg-success");
	} else if(bg == 2){
		icon.classList.add("bg-info");
	} else if(bg == 3){
		icon.classList.add("bg-warning");
	} else if(bg == 4){
		icon.classList.add("bg-danger");
	}
	
</script>

<script type="text/javascript">

goSpaceList = function(){
	socket.send(JSON.stringify({"type" : "LeaveSpace"}));
	location.href="/mySpace/mySpaceList";
}

</script>