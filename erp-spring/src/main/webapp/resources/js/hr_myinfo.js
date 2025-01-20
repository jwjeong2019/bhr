var heim = document.querySelector('#hr-emp-info-modify');
var buttonMod = document.querySelector('#hr-emp-info-btn-modify');

var hedm = document.querySelector('#hr-emp-dialog-modify');
var btnCom = document.querySelector('#dialog-modify-btn-complete');
var btnCan = document.querySelector('#dialog-modify-btn-cancel');

var hedd = document.querySelector('#hr-emp-dialog-delete');
var btnYes = document.querySelector('#dialog-delete-btn-yes');
var btnNo = document.querySelector('#dialog-delete-btn-no');

buttonMod.addEventListener('click', () => {
    hedm.showModal();
});

btnCom.addEventListener('click', () => {
    hedm.close();
});

btnCan.addEventListener('click', () => {
    hedm.close();
});

btnYes.addEventListener('click', () => {
    hedd.close();
});

btnNo.addEventListener('click', () => {
    hedd.close();
});