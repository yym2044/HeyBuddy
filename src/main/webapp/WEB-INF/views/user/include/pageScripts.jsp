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

<script type="text/javascript">

	let spaceUsers;

	$.ajax({
		async: false
		, cache: false
		, type: "post"
		, data: {hyspSeq : "<c:out value='${hyspSeq}'/>", hymmSeq : "<c:out value='${sessSeq}'/>"}
		, url: "/user/memberListAjax"
		, success: function(data){
			
//			console.log(data);
			
			spaceUsers = data.list;
			/* 
			$.each(spaceUsers, function(i){
				console.log(users[i].hymmSeq);
			});
			 */
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	}); 
	
	const socketOnline = new WebSocket('ws://localhost:8091/online');
	//const socketOnline = new WebSocket('wss://tp.heybuddy.a9xlab.com/online');

	socketOnline.onmessage = function(event){
		
		paintOnlineMember();
		
	}
	
	function paintOnlineMember(){
		
	$("#onlineMemberIconSpan").removeClass("size-5");
	
	$("#onlineMembersDiv").children().remove();
	
		
		let append = "";
		append += '<a href="#" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">';
		append += '<div class="d-block me-3">';
		append += '<div class="avatar">';
		append += '<img src="' + '<c:out value="${path}"/>' + '<c:out value="${uuidFileName}"/>' + '" class="img-fluid rounded-circle w-auto" alt="">';
		append += '</div></div>';
		append += '<div class="flex-grow-1 flex-wrap pe-3">';
		append += '<span class="mb-0 d-block d-flex align-items-center">';
		append += '<strong>' + '<c:out value="${sessName}"/>' + '</strong><span class="badge rounded-pill bg-primary">ME</span>';
		append += '</span>';
		append += '<small class="text-muted">' + '<c:out value="${sessId}"/>' + '</small>';
		append += '</div></a>';
		
		$("#onlineMembersDiv").append(append);
		
		const userArrOnline = JSON.parse(event.data);
//		console.log("online users : ",userArrOnline);

//		console.log(userArrOnline.length);
		if(userArrOnline.length == 1){
			$("#onlineMemberIconSpan").removeClass("size-5");
		} else if(userArrOnline.length > 1) {
			$("#onlineMemberIconSpan").addClass("size-5");
		}
		
		for(var i = 0; i < spaceUsers.length; i++){
			for(var j = 0; j < userArrOnline.length; j++){
			
				if(spaceUsers[i].hymmSeq == userArrOnline[j]){

					append = "";
					append += '<a href="#" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">';
					append += '<div class="d-block me-3">';
					append += '<div class="avatar">';
					append += '<img src="' + spaceUsers[i].path + spaceUsers[i].uuidFileName + '" class="img-fluid rounded-circle w-auto" alt="">';
					append += '</div></div>';
					append += '<div class="flex-grow-1 flex-wrap pe-3">';
					append += '<span class="mb-0 d-block">';
					append += '<strong>' + spaceUsers[i].hymmName + '</strong>';
					append += '</span>';
					append += '<small class="text-muted">' + spaceUsers[i].hymmId + '</small>';
					append += '</div></a>';
					
					$("#onlineMembersDiv").append(append);
					
					break;
				}
				
			}
			
		}
	}
	
</script>
