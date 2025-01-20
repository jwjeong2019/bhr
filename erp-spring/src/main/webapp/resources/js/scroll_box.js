var dialog = document.querySelector('dialog');
var li = document.querySelectorAll('.scroll-box li');
var closeButton = document.querySelector('dialog button');

li.forEach(e => {
    e.addEventListener('click', () => {
        dialog.showModal();
    });
});

closeButton.addEventListener('click', () => {
    dialog.close();
});