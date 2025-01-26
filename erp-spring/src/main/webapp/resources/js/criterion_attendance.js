const infoForm = document.getElementById('info-form');
const dialog = document.querySelector('dialog');
window.onClickItem = function (item) {
	console.log(item);
	dialog.showModal();
	document.getElementById('info-input-id').value = item.id;
	document.getElementById('info-input-code').value = item.code;
	document.getElementById('info-input-type').value = item.type;
	document.getElementById('info-input-status').value = item.status;
	document.getElementById('info-input-name').value = item.name;
}
window.onClickClose = function () {
	dialog.close();
}
window.onClickUpdate = function () {
	infoForm.action = 'criterionAttendanceUpdate.do';
	infoForm.method = 'post';
	infoForm.submit();
}
window.onClickDelete = function () {
	infoForm.action = 'criterionAttendanceDelete.do';
	infoForm.method = 'post';
	infoForm.submit();
}