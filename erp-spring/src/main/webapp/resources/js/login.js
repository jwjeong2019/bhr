let id;
let pw;


function onChangeId(e) {
	id = e.value;
}
function onChangePw(e) {
	pw = e.value;
}

function onClickSignIn() {
	document.getElementById('param-username').value = id;
	document.getElementById('param-password').value = pw;
	
	const form = document.getElementById('form-login');
	form.action = '/login';
	form.method = 'post';
	form.submit();
}

if ('${msg}' == 'fail') {
	let dialog = document.querySelector('dialog');
	dialog.showModal();
	document.getElementById('close').onclick = e => dialog.close();
}