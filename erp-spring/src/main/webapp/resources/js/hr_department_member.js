if ('${msg}' == 'already existing Department.') {
	alert('${msg}');
}
const formUpd = document.getElementById('form-update');
//const formDel = document.getElementById('form-delete');
const dialogIns = document.getElementById('dialog-insert');
const dialogDel = document.getElementById('dialog-delete');

function onClickDepItem(item) {
	console.log(item);
	const sd = document.getElementById('select-department');
	sd.innerText = '👉 ' + item.criterion.name;
	sd.style.display = 'inline-block';
	document.getElementById('upd-dep-id').value = item.id;
}
function onClickEmpItem(item) {
	console.log(item);
	const se = document.getElementById('select-employee');
	se.innerText = '👉 ' + item.name + '(' + item.code + ')';
	se.style.display = 'inline-block';
	document.getElementById('btn-add').style.display = 'inline-block';
	document.getElementById('upd-emp-id').value = item.id;
}
function onClickMemItem(item) {
	console.log(item);
	document.getElementById('btn-remove').style.display = 'inline-block';
	document.getElementById('upd-emp-id').value = item.id;
	document.getElementById('upd-dep-id').value = null;
}

function onClickAdd() {
	console.log(formUpd);
	formUpd.action = 'hrDepartmentMemberUpdate.do';
	formUpd.method = 'post';
	formUpd.submit();
}
function onClickRemove() {
	formUpd.action = 'hrDepartmentMemberUpdate.do';
	formUpd.method = 'post';
	formUpd.submit();
}