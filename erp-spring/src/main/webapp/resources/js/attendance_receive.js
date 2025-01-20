var ad = document.querySelector('.alert-delete');
var liR = document.querySelectorAll('.scroll-box-right li');
var closeButtonRight = document.querySelector('.alert-delete .btn-primary');

liR.forEach(e => {
    e.addEventListener('click', () => {
        ad.showModal();
    });
});

closeButtonRight.addEventListener('click', () => {
    ad.close();
});
