const firebaseConfig = {
	apiKey: "AIzaSyAFBcVqLBg2dZ3-dRVvoq7dNqRc2bsxlVY",
	authDomain: "heybuddy-b3735.firebaseapp.com",
	databaseURL: "https://heybuddy-b3735-default-rtdb.firebaseio.com",
	projectId: "heybuddy-b3735",
	storageBucket: "heybuddy-b3735.appspot.com",
	messagingSenderId: "621505432743",
	appId: "1:621505432743:web:36139966644ae80ea45f82"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

const msgScreen = document.getElementById("messages"); //the <ul> that displays all the <li> msgs
const msgForm = document.getElementById("messageForm"); //the input form
const msgInput = document.getElementById("msg-input"); //the input element to write messages
const msgBtn = document.getElementById("msg-btn"); //the Send button

const db = firebase.database();
const msgRef = db.ref("/msgs");
//to store data in the msgs folder by creating a reference in database

let name = "";
function init() {
	name = prompt("Please enter your name");
}
document.addEventListener('DOMContentLoaded', init);

msgForm.addEventListener('submit', sendMessage);
function sendMessage(e) {
	e.preventDefault();
	const text = msgInput.value;

	if (!text.trim()) return alert('Please type a message'); //no msg submitted
	const msg = {
		name: name,
		text: text
	};

	msgRef.push(msg);
	msgInput.value = "";
}

msgRef.on('child_added', updateMsgs);

const updateMsgs = data => {
	const { dataName, text } = data.val(); //get name and text

	//load messages, display on left if not the user's name. Display on right if it is the user.
	const msg = `<li class="${dataName == name ? "msg my" : "msg"}"><span class = "msg-span">
	    <i class = "name">${name}: </i>${text}
	    </span>
	  </li>`

	msgScreen.innerHTML += msg; //add the <li> message to the chat window

	//auto scroll to bottom
	document.getElementById("chat-window").scrollTop = document.getElementById("chat-window").scrollHeight;
}

