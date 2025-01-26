const infoForm = document.getElementById('info-form');
const dialog = document.querySelector('dialog');
window.onClickItem = function onClickItem(item) {
	console.log(item);
	dialog.showModal();
	
	const iic = document.getElementById('info-input-code');
	const iit =	document.getElementById('info-input-type');
	
	document.getElementById('info-input-id').value = item.id;
	iic.value = item.code;
	iit.value = item.type;
	document.getElementById('info-input-status').value = item.status;
	document.getElementById('info-input-name').value = item.name;
	
	iic.disabled = true;
	iit.disabled = true;
}
window.onClickClose = function () {
	dialog.close();
}
window.onClickUpdate = function () {
	infoForm.action = 'criterionPayrollUpdate.do';
	infoForm.method = 'post';
	infoForm.submit();
}
window.onClickDelete = function () {
	infoForm.action = 'criterionPayrollDelete.do';
	infoForm.method = 'post';
	infoForm.submit();
}