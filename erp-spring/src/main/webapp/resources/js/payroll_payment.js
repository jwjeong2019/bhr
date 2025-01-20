var dialog = document.querySelector('dialog');
var btnView = document.querySelector('#btn-view');
var btnClose = document.querySelector('#btn-close');

btnView.addEventListener('click', () => {
    dialog.showModal();
});

btnClose.addEventListener('click', () => {
    dialog.close();
});