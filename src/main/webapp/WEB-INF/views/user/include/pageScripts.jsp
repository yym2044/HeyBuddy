<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">
	
	const socketOnline = new WebSocket('ws://localhost:8091/online');
	//const socketOnline = new WebSocket('wss://tp.heybuddy.a9xlab.com/online');

</script>

<script type="text/javascript">
logOut = function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		,success: function(response) {
			if(response.rt == "success") {
				socketOnline.send(JSON.stringify({"type" : "LeaveSpace"}));
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
	
	if(bg == 1 || bg == null){
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
	socketOnline.send(JSON.stringify({"type" : "LeaveSpace"}));
	location.href="/mySpace/mySpaceList";
}

</script>
<!-- 
<script type="text/javascript">

	$.ajax({
		async: true
		, cache: false
		, type: "post"
		, url: "/user/memberListAjax"
		, success: function(data){
			
			const list = data.list;
			
			$.each(list, function(i){
				console.log(list[i].hymmSeq);
			});
			
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	}); 

</script>
 -->