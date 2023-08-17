const container = document.querySelector('.single-product')
const jumbo = document.querySelector('.figure-img');
const thumbs = document.querySelectorAll('.tumbnail');

container.addEventListener('click', function(e) {

    if (e.target.className == 'tumbnail') {
        jumbo.src = e.target.src;

        jumbo.classList.add('ukuran');

        thumbs.forEach(function(tumbnail) {

            tumbnail.className = 'tumbnail';
        });



        e.target.classList.add('activ');
    }
});