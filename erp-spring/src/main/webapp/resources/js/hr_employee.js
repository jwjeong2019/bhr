let empData = {};
let mLiCnt = 0;
const dialogReg = document.getElementById('hr-emp-dialog-register');

window.onClickEmpItem = function (item) {
	empData = item;
	mLiCnt = item.workHistory.length;
	// 인적사항
	const tb1 = document.getElementById('tb-emp');
	const tds1 = tb1.getElementsByTagName('td');
	tds1[2].innerText = item.department.criterion.name;
	tds1[3].innerText = item.position;
	tds1[6].innerText = item.name;
	tds1[7].innerText = item.joinDate.join('-');
	tds1[10].innerText = item.email;
	tds1[11].innerText = item.phone;
	// 경력사항
	const ul1 = document.getElementById('scroll-box-mini');
	ul1.replaceChildren();
	for (let i = 0; i < item.workHistory.length; i++) {
		const wh = item.workHistory[i];
		ul1.innerHTML += '<li class="container space">'
			+ '<span class="w-30p">' + wh.term + '</span>'
			+ '<span class="w-30p">' + wh.project + '</span>'
			+ '<span class="w-30p">' + wh.company + '</span>'
			+ '<span class="w-30p">' + wh.work + '</span>'
			+ '</li>';
	}
	// 수정 인적사항
	const tb = document.getElementById('tb-emp-mod');
	const tbInputs = tb.getElementsByTagName('input');
	tbInputs[0].value = item.code;
	tbInputs[1].value = item.email;
	tbInputs[3].value = item.nickname;
	tbInputs[4].value = item.name;
	tbInputs[5].value = item.phone;
	tbInputs[6].value = item.birthday.join('-');
	tbInputs[7].value = item.joinDate.join('-');
	tbInputs[8].value = item.role;
	// 수정 경력사항
	const ul2 = document.getElementById('mod-work-hist-ul');
	ul2.replaceChildren();
	for (let i = 0; i < item.workHistory.length; i++) {
		const wh = item.workHistory[i];
		ul2.innerHTML += '<li id="mod-work-hist-li-' + (i + 1) + '" class="container space li-input mg-b-20">'
			+ '<input type="text" placeholder="2024-01 ~ 2024-02" value="' + wh.term + '" onchange="onChangeModTerm(this,' + i + ')">'
			+ '<input type="text" placeholder="ERP 리뉴얼" value="' + wh.project + '" onchange="onChangeModProject(this,' + i + ')">'
			+ '<input type="text" placeholder="ERP 회사" value="' + wh.company + '" onchange="onChangeModCompany(this,' + i + ')">'
			+ '<input type="text" placeholder="사무/보조" value="' + wh.work + '" onchange="onChangeModWork(this,' + i + ')">'
			+ '</li>';
	}
	ul2.innerHTML += '<li class="container center-row" onclick="onClickModPlus()">➕</li>';
}
// list



// register
let data = {};
data.reqWorkHistory = [];
window.onChangeRegCode = function (e) {
	data.reqCode = e.value;
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

let term = '', project = '', company = '', work = '';
window.onChangeRegTerm = function (e) {
	term = e.value;
}
window.onChangeRegProject = function (e) {
	project = e.value;
}
window.onChangeRegCompany = function (e) {
	company = e.value;
}
window.onChangeRegWork = function (e) {
	work = e.value;
}

let liCnt = 1;
window.onClickRegPlus = function () {
	data.reqWorkHistory.push({ term, project, company, work });
	term = ''; project = ''; company = ''; work = '';

	const li = document.getElementById('reg-work-hist-li-' + liCnt);
	const clone = li.cloneNode(true);
	clone.id = 'reg-work-hist-li-' + ++liCnt;
	const inputs = clone.children;
	inputs[0].value = '';
	inputs[1].value = '';
	inputs[2].value = '';
	inputs[3].value = '';
	li.after(clone);
}

window.onClickRegister = function () {
	dialogReg.showModal();
}
window.onClickRegComplete = function () {
	if (term != '' || project != '' || company != '' || work != '') {
		data.reqWorkHistory.push({ term, project, company, work });
	}
	console.log(data);
	document.getElementById('reg-data').value = JSON.stringify(data);
	dialogReg.close();

	const form = document.getElementById('form-reg');
	form.action = 'hrEmployeeRegister.do';
	form.method = 'post';
	form.submit();
}
window.onClickRegCancel = function () {
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
const dialogMod = document.getElementById('hr-emp-dialog-modify');

let mdata = {};
//mdata.reqWorkHistory = [];
//mdata.reqWorkHistoryReg = [];
window.onChangeModCode = function (e) {
	mdata.reqCode = e.value;
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

let mTerm = '', mProject = '', mCompany = '', mWork = '';
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

let mc = 0;
//let mLiCnt = empData.workHistory?.length;
window.onClickModPlus = function () {
	mdata.reqWorkHistoryReg.push({ term: '', project: '', company: '', work: '' });

	const li = document.getElementById('mod-work-hist-li-' + mLiCnt);
	const nextli = document.createElement('li');
	nextli.id = 'mod-work-hist-li-' + ++mLiCnt;
	nextli.className = 'container space li-input mg-b-20';
	nextli.innerHTML = '<input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChangeModTermReg(this,' + mc + ')">'
		+ '<input type="text" placeholder="ERP 리뉴얼" onchange="onChangeModProjectReg(this,' + mc + ')">'
		+ '<input type="text" placeholder="ERP 회사" onchange="onChangeModCompanyReg(this,' + mc + ')">'
		+ '<input type="text" placeholder="사무/보조" onchange="onChangeModWorkReg(this,' + mc++ + ')">';
	li.after(nextli);
}

window.onClickModify = function () {
	mdata = {
		reqId: empData.id,
		reqCode: empData.code,
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
	dialogMod.showModal();
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