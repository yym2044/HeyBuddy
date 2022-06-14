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
		append += '<a href="javascript:showProfileModal(' + '<c:out value="${sessSeq}"/>' + ')" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">';
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
					append += '<a href="javascript:showProfileModal(' + spaceUsers[i].hymmSeq + ')" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">';
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


<script type="text/javascript">
// 멤버 프로필 카드 뜨게하는 함수 , 인자값으로 멤버 시퀀스를 받음	
function showProfileModal(seq){
	
	$.ajax({
		async: false
		,cache: false
		,type: "post"
		,url: "/user/selectOneAjax"
		,data : { "hymmSeq" : seq }
		,success: function(data){
			
			if(data.uuidFileName != null){
				$("#modalAvatar").attr("src", data.path + data.uuidFileName);
			} else {
				$("#modalAvatar").attr("src", "/resources/user/images/profileDefault.png");
			}
			
			if(data.hymmName != null){
				$("#modalName").text(data.hymmName);
			}
			if(data.hymmEmail != null){
				$("#modalEmail").text(data.hymmEmail);
				$("#modalEmail").attr("href", "#!mailto:" + data.hymmEmail);
			}
			if(data.hymmNumber != null){
				
				const number = data.hymmNumber
				let numberString = "";
				
				if(number.length == 10){
					numberString = number.substring(0,3) + "-" + number.substring(3,6) + "-" + number.substring(6,10);
				} else {
					numberString = number.substring(0,3) + "-" + number.substring(3,7) + "-" + number.substring(7,11);
				}
				
				$("#modalNumber").text(numberString);
			}
			
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	
	
	$("#modalMemberCard").modal('show');
	
}

</script>

<!-- Member Modal Start -->
<div class="modal fade" id="modalMemberCard" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content border-0">

			<div class="card">

				<!--Card body-->
				<div class="card-body">
					<!--Contact-->
					<div class="text-center">

						<!-- Avatar -->
						<a class="avatar mb-3 mx-auto xl rounded-cirlce d-block">
							<img id="modalAvatar" src="" alt="..." class="img-fluid rounded-circle">
						</a>
						<!-- Title -->
						<h5 class="mb-0">
							<a id="modalName" class="text-reset"></a>
						</h5>

						<!-- Email -->
						<p class="small text-muted mb-0">
							<a id="modalEmail" class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com">no registered email.</a>
						</p>

						<!-- Phone -->
						<p class="small text-muted mb-3">
							<a id="modalNumber" class="d-block text-reset text-truncate" href="#">no registered number.</a>
						</p>


						<!-- Split dropdown user button -->
						<div class="btn-group">
							<button type="button" class="btn btn-outline-gray text-body">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle">
									<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
								Send Message
							</button>
							<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x">
									<circle cx="12" cy="12" r="1"></circle>
									<circle cx="12" cy="5" r="1"></circle>
									<circle cx="12" cy="19" r="1"></circle></svg>
							</button>
							<ul class="dropdown-menu dropdown-menu-end" style="">
								<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50">
											<circle cx="12" cy="12" r="10"></circle>
											<line x1="12" y1="16" x2="12" y2="12"></line>
											<line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
										View detail
									</a></li>
								<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50">
											<circle cx="12" cy="12" r="10"></circle>
											<line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
										Block contact
									</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Modal Member End-->
