$('.carousel.carousel-slider').carousel({
    fullWidth: true
});
setInterval(() => {
    $(".carousel.carousel-slider").carousel("next");
}, 4500);