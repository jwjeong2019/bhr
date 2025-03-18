if ('${msg}' == 'already existing Department.') {
	alert('${msg}');
}
const formInsDel = document.getElementById('form-insert-delete');	
const dialogIns = document.getElementById('dialog-insert');
const dialogDel = document.getElementById('dialog-delete');
function onClickInsertItem(item) {
	console.log(item);
	dialogIns.showModal();
	document.getElementById('cri-id').value = item.id;
}
function onClickInsertYes() {
	formInsDel.action = 'hrDepartmentInsert.do';
	formInsDel.method = 'post';
	formInsDel.submit();
}
function onClickInsertNo() {
	dialogIns.close();
}
function onClickDeleteItem(item) {
	console.log(item);
	dialogDel.showModal();
	document.getElementById('dep-id').value = item.id;
}
function onClickDeleteYes() {
	formInsDel.action = 'hrDepartmentDelete.do';
	formInsDel.method = 'post';
	formInsDel.submit();
}
function onClickDeleteNo() {
	dialogDel.close();
}