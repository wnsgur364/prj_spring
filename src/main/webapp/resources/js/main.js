document.addEventListener('DOMContentLoaded', () => {
	"use strict";

	/* Preloader */
  	const preloader = document.querySelector('#preloader');
  	if (preloader) {
    	window.addEventListener('load', () => {
      		setTimeout(() => {
        		preloader.classList.add('loaded');
      		}, 1000);
      		setTimeout(() => {
        		preloader.remove();
      		}, 2000);
    	});
  	}
 
  	/* Scroll top button */
  	const scrollTop = document.querySelector('.scroll-top');
  	if (scrollTop) {
    	const togglescrollTop = function() {
      		window.scrollY > 100 ? scrollTop.classList.add('active') : scrollTop.classList.remove('active');
    	}
    	window.addEventListener('load', togglescrollTop);
    	document.addEventListener('scroll', togglescrollTop);
    	scrollTop.addEventListener('click', window.scrollTo({
      		top: 0,
      		behavior: 'smooth'
    	}));
  	}
  
	/* Animation on scroll function and init */
	function aos_init() {
    	AOS.init({
      		duration: 1000,
      		easing: 'ease-in-out',
      		once: true,
      		mirror: false
    	});
  	}
  	window.addEventListener('load', () => {
    	aos_init();
	});

});