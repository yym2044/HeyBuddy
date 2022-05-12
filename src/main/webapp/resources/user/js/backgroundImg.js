const backGroundImgUrl = localStorage.getItem("backUrl");

if(backGroundImgUrl == 1){
	document.body.style.backgroundImage = "url('/resources/user/images/allround.jpg')";
} else if (backGroundImgUrl == 2){
	document.body.style.backgroundImage = "url('/resources/user/images/allround2.png')";
} else if (backGroundImgUrl == 3){
	document.body.style.backgroundImage = "url('/resources/user/images/allround3.jpg')";
} else if (backGroundImgUrl == 4){
	document.body.style.backgroundImage = "url('/resources/user/images/allround4.png')";
}
