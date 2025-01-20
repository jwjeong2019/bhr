var dialog = document.querySelector('dialog');
var btnView = document.querySelector('#btn-view');
var btnClose = document.querySelector('#btn-close');

var ddBtn = document.querySelector('#dropdown-button');
var ddCont = document.querySelector('#dropdown-content');
var ddItems = document.querySelectorAll('#dropdown-content div');

btnView.addEventListener('click', () => {
    dialog.showModal();
});

btnClose.addEventListener('click', () => {
    dialog.close();
});

ddBtn.addEventListener('click', () => {
    const disp = ddCont.style.display;
    if (disp === 'none' || !disp) {
        ddCont.style.display = 'block';
    } else {
        ddCont.style.display = 'none';
    }
});

ddItems.forEach(e => {
    const v = e.getAttribute('value');
    e.addEventListener('click', () => {
        console.log(v);
        ddCont.style.display = 'none';
    })
});