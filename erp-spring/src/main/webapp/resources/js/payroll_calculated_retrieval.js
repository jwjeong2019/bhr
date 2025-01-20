var ddBtn = document.querySelector('#dropdown-button');
var ddCont = document.querySelector('#dropdown-content');
var ddItems = document.querySelectorAll('#dropdown-content div');

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