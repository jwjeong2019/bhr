const infoForm = document.getElementById('info-form');
const dialog = document.querySelector('dialog');
function onClickItem(item) {
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
function onClickClose() {
	dialog.close();
}
function onClickUpdate() {
	infoForm.action = 'criterionDepartmentUpdate.do';
	infoForm.method = 'post';
	infoForm.submit();
}
function onClickDelete() {
	infoForm.action = 'criterionDepartmentDelete.do';
	infoForm.method = 'post';
	infoForm.submit();
}