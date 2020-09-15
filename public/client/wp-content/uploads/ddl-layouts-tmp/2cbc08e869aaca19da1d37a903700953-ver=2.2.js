/*Layouts js goes here*/



// For pages to add a class so it has the notch into the featured image
$=jQuery;

var featured_image = $('.page-featured-image-container');

if (featured_image.length != 0) {
  $(".page-content").addClass('shadow-page');
}