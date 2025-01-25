let empData = {};
const dialogReg = document.getElementById('hr-emp-dialog-register');
let data = {};
let regIdx = 0;
const dialogMod = document.getElementById('hr-emp-dialog-modify');
let mdata = {};
let modIdx = 0;

// list
window.onClickEmpItem = function (item) {
	console.log(item);
	empData = item;
	renderInfo();
}

function renderInfo() {
	// 인적사항
	const tb = document.getElementById('tb-emp');
	const tds = tb.getElementsByTagName('td');
	tds[2].innerText = empData.department.criterion.name;
	tds[3].innerText = empData.position;
	tds[6].innerText = empData.name;
	tds[7].innerText = empData.joinDate.join('-');
	tds[10].innerText = empData.email;
	tds[11].innerText = empData.phone;
	// 경력사항
	const ul1 = document.getElementById('scroll-box-mini');
	ul1.replaceChildren();
	for (let i = 0; i < empData.workHistory.length; i++) {
		const wh = empData.workHistory[i];
		ul1.innerHTML += '<li class="container space">'
			+ '<span class="w-30p">' + wh.term + '</span>'
			+ '<span class="w-30p">' + wh.project + '</span>'
			+ '<span class="w-30p">' + wh.company + '</span>'
			+ '<span class="w-30p">' + wh.work + '</span>'
			+ '</li>';
	}
}



// register
window.onChangeRegCode = function (e) {
	data.reqCode = e.value;
}
window.onChangeRegPosition = function (e) {
	data.reqPosition = e.value;
}
window.onChangeRegEmail = function (e) {
	data.reqEmail = e.value;
}
window.onChangeRegPassword= function (e) {
	data.reqPassword = e.value;
}
window.onChangeRegNickname = function (e) {
	data.reqNickname = e.value;
}
window.onChangeRegName = function (e) {
	data.reqName = e.value;
}
window.onChangeRegPhone = function (e) {
	data.reqPhone = e.value.replaceAll('-', '');
}
window.onChangeRegBirthday = function (e) {
	data.reqBirthday = e.value;
}
window.onChangeRegJoinDate = function (e) {
	data.reqJoinDate = e.value;
}
window.onChangeRegRole = function (e) {
	data.reqRole = e.value;
}


window.onChangeRegTerm = function (e, i) {
	console.log(data);
	data.reqWorkHistory[i].term = e.value;
}
window.onChangeRegProject = function (e, i) {
	data.reqWorkHistory[i].project = e.value;
}
window.onChangeRegCompany = function (e, i) {
	data.reqWorkHistory[i].company = e.value;
}
window.onChangeRegWork = function (e, i) {
	data.reqWorkHistory[i].work = e.value;
}

window.onClickRegister = function () {
	data.reqWorkHistory = [];
	data.reqWorkHistory.push({ term: '', project: '', company: '', work: '' });
	dialogReg.showModal();
}
window.onClickRegPlus = function () {
	data.reqWorkHistory.push({ term: '', project: '', company: '', work: '' });

	const li = document.getElementById('reg-work-hist-li-' + regIdx);
	const nextli = document.createElement('li');
	nextli.innerHTML = `
		<li id="reg-work-hist-li-${++regIdx}" class="container space li-input mg-b-20">
	        <input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChangeRegTerm(this, ${regIdx})">
	        <input type="text" placeholder="ERP 리뉴얼"  onchange="onChangeRegProject(this, ${regIdx})">
	        <input type="text" placeholder="ERP 회사"  onchange="onChangeRegCompany(this, ${regIdx})">
	        <input type="text" placeholder="사무/보조"  onchange="onChangeRegWork(this, ${regIdx})">
	    </li>
	`;
	li.after(nextli);
}
window.onClickRegComplete = function () {
	console.log(data);
	document.getElementById('reg-data').value = JSON.stringify(data);
	if (checkRegister()) dialogReg.close();

	const form = document.getElementById('form-reg');
	form.action = 'hrEmployeeRegister.do';
	form.method = 'post';
	form.submit();
}
function checkRegister() {
	let isChecked = false;
	console.log(data);
	if (!data.reqCode) {
		alert('코드를 입력해주세요');
		return isChecked;
	}
	if (!data.reqEmail) {
		alert('이메일을 입력해주세요');
		return isChecked;
	}
	if (!data.reqPassword) {
		alert('비밀번호를 입력해주세요');
		return isChecked;
	}
	return !isChecked;
}
window.onClickRegCancel = function () {
	data = {};
	const tb = document.getElementById('tb-emp-reg');
	const inputs = tb.getElementsByTagName('input');
	for (let i = 0; i < inputs.length; i++) {
		inputs[i].value = '';
	}
	const ul = document.getElementById('reg-work-hist-ul');
	const ulInputs = ul.getElementsByTagName('input');
	for (let i = 0; i < ulInputs.length; i++) {
		ulInputs[i].value = '';
	}
	dialogReg.close();
}

// modify
window.onChangeModCode = function (e) {
	mdata.reqCode = e.value;
}
window.onChangeModPosition = function (e) {
	mdata.reqPosition = e.value;
}
window.onChangeModEmail = function (e) {
	mdata.reqEmail = e.value;
}
window.onChangeModPassword = function (e) {
	mdata.reqPassword = e.value;
}
window.onChangeModNickname = function (e) {
	mdata.reqNickname = e.value;
}
window.onChangeModName = function (e) {
	mdata.reqName = e.value;
}
window.onChangeModPhone = function (e) {
	mdata.reqPhone = e.value.replaceAll('-', '');
}
window.onChangeModBirthday = function (e) {
	mdata.reqBirthday = e.value;
}
window.onChangeModJoinDate = function (e) {
	mdata.reqJoinDate = e.value;
}
window.onChangeModRole = function (e) {
	mdata.reqRole = e.value;
}


window.onChangeModTerm = function (e, i) {
	console.log(e);
	mdata.reqWorkHistory[i].term = e.value;
}
window.onChangeModProject = function (e, i) {
	mdata.reqWorkHistory[i].project = e.value;
}
window.onChangeModCompany = function (e, i) {
	mdata.reqWorkHistory[i].company = e.value;
}
window.onChangeModWork = function (e, i) {
	mdata.reqWorkHistory[i].work = e.value;
}

window.onChangeModTermReg = function (e, i) {
	mdata.reqWorkHistoryReg[i].term = e.value;
}
window.onChangeModProjectReg = function (e, i) {
	mdata.reqWorkHistoryReg[i].project = e.value;
}
window.onChangeModCompanyReg = function (e, i) {
	mdata.reqWorkHistoryReg[i].company = e.value;
}
window.onChangeModWorkReg = function (e, i) {
	mdata.reqWorkHistoryReg[i].work = e.value;
}


window.onClickModify = function () {
	mdata = {
		reqId: empData.id,
		reqCode: empData.code,
		reqPosition: empData.position,
		reqEmail: empData.email,
		reqPassword: empData.password,
		reqNickname: empData.nickname,
		reqName: empData.name,
		reqPosition: empData.position,
		reqPhone: empData.phone,
		reqBirthday: empData.birthday,
		reqJoinDate: empData.joinDate,
		reqRole: empData.role,
		reqWorkHistory: empData.workHistory,
		reqWorkHistoryReg: []
	};
	console.log(mdata);
	modIdx = empData.workHistory.length - 1;
	renderDialogMod();
	dialogMod.showModal();
}

function renderDialogMod() {
	// 수정 인적사항
	const tb = document.getElementById('tb-emp-mod');
	const inputs = tb.getElementsByTagName('input');
	inputs[0].value = empData.code;
	inputs[1].value = empData.position;
	inputs[2].value = empData.email;
	inputs[4].value = empData.nickname;
	inputs[5].value = empData.name;
	inputs[6].value = empData.phone;
	inputs[7].value = empData.birthday.join('-');
	inputs[8].value = empData.joinDate.join('-');
	inputs[9].value = empData.role;
	// 수정 경력사항
	const ul = document.getElementById('mod-work-hist-ul');
	ul.replaceChildren();
	for (let i = 0; i < mdata.reqWorkHistory.length; i++) {
		const wh = mdata.reqWorkHistory[i];
		ul.innerHTML += `
				<li id="mod-work-hist-li-${i}" class="container space li-input mg-b-20">
			        <input type="text" placeholder="2024-01 ~ 2024-02" value="${wh.term}" onchange="onChangeModTerm(this, ${i})">
			        <input type="text" placeholder="ERP 리뉴얼" value="${wh.project}" onchange="onChangeModProject(this, ${i})">
			        <input type="text" placeholder="ERP 회사" value="${wh.company}" onchange="onChangeModCompany(this, ${i})">
			        <input type="text" placeholder="사무/보조" value="${wh.work}" onchange="onChangeModWork(this, ${i})">
			    </li>
			`;
	}
	ul.innerHTML += '<li class="container center-row" onclick="onClickModPlus()">➕</li>';
}
window.onClickModPlus = function () {
	mdata.reqWorkHistoryReg.push({ term: '', project: '', company: '', work: '' });
	const modRegIdx = mdata.reqWorkHistoryReg.length - 1;

	const li = document.getElementById('mod-work-hist-li-' + modIdx++);
	const nextli = document.createElement('li');
	nextli.id = `mod-work-hist-li-${modIdx}`;
	nextli.className = `container space li-input mg-b-20`;
	nextli.innerHTML = `
        <input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChangeModTermReg(this, ${modRegIdx})">
        <input type="text" placeholder="ERP 리뉴얼"  onchange="onChangeModProjectReg(this, ${modRegIdx})">
        <input type="text" placeholder="ERP 회사"  onchange="onChangeModCompanyReg(this, ${modRegIdx})">
        <input type="text" placeholder="사무/보조"  onchange="onChangeModWorkReg(this, ${modRegIdx})">
	`;
	li.after(nextli);
}
window.onClickModComplete = function () {
	console.log(mdata);
	document.getElementById('mod-data').value = JSON.stringify(mdata);
	dialogMod.close();

	const form = document.getElementById('form-mod');
	form.action = 'hrEmployeeUpdate.do';
	form.method = 'post';
	form.submit();
}
window.onClickModCancel = function () {
	const tb = document.getElementById('tb-emp-mod');
	const inputs = tb.getElementsByTagName('input');
	for (let i = 0; i < inputs.length; i++) {
		inputs[i].value = '';
	}

	const ul = document.getElementById('mod-work-hist-ul');
	const ulInputs = ul.getElementsByTagName('input');
	for (let i = 0; i < ulInputs.length; i++) {
		ulInputs[i].value = '';
	}
	dialogMod.close();
}

// delete
window.onClickDelete = function () {
	document.getElementById('del-emp-id').value = empData.id;
	const form = document.getElementById('form-del');
	form.action = 'hrEmployeeDelete.do';
	form.method = 'post';
	form.submit();
}