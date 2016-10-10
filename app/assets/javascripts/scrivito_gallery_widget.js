(function($, App) {
  'use strict';

  scrivito.on('content', function(content) {
    var galleries = $(content).find('.scrivito_gallery_widget_image_list')
    $.each(galleries, function(index, gallery) {
      var active_on = $(gallery).data('image-activate-on');
      $(gallery).on(active_on, 'li', function() {
        var elem = $(this);
        var target = $(elem.data('image-gallery-target'));
        target.siblings().removeClass('active');
        target.addClass('active');
        elem.siblings().removeClass('active');
        elem.addClass('active');

      }); // end image handle
    }); // end each
  }); // end on content
})(jQuery, this);
