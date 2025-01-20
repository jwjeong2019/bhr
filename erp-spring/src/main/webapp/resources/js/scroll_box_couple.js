var ai = document.querySelector('.alert-insert');
var liL = document.querySelectorAll('.scroll-box-left li');
var closeButtonLeft = document.querySelector('.alert-insert .btn-primary');

var ad = document.querySelector('.alert-delete');
var liR = document.querySelectorAll('.scroll-box-right li');
var closeButtonRight = document.querySelector('.alert-delete .btn-primary');

liL.forEach(e => {
    e.addEventListener('click', () => {
        ai.showModal();
    });
});

liR.forEach(e => {
    e.addEventListener('click', () => {
        ad.showModal();
    });
});

closeButtonLeft.addEventListener('click', () => {
    ai.close();
});

closeButtonRight.addEventListener('click', () => {
    ad.close();
});
