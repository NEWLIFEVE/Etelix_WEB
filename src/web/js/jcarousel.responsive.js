(function($) {
    $(function() {
        var jcarousel = $('.jcarousel');
        jcarousel.jcarousel({
                        autostart: true,
                        vertical: true
                    });
        jcarousel.jcarouselAutoscroll({
                        autostart: true,  target: '+=6'
                     });
        jcarousel.on('jcarousel:reload jcarousel:create', function () {
                var width = jcarousel.innerWidth();

                if (width >= 600) {
                    
                    width = width / 6;
                      $('.jcarousel-control-prev')
                        .jcarouselControl({
                          
                            target: '-=6'
                        });

                        $('.jcarousel-control-next')
                            .jcarouselControl({

                                target: '+=6'
                        });


                } else if ((width > 350)&&(width < 600) ) {
                    width = width / 4;
                    
                     $('.jcarousel-control-prev')
                        .jcarouselControl({
                            target: '-=4'
                        });

                        $('.jcarousel-control-next')
                            .jcarouselControl({
                                target: '+=4'
                        });
                
                }else if (width <= 390) {
                    width = width /2;
                    
                     $('.jcarousel-control-prev')
                        .jcarouselControl({
                            target: '-=2'
                        });

                        $('.jcarousel-control-next')
                            .jcarouselControl({
                                target: '+=2'
                        });
                }

                jcarousel.jcarousel('items').css('width', width + 'px');
            })
            .jcarousel({
                wrap: 'circular',
                
            });

        /*$('.jcarousel-control-prev')
            .jcarouselControl({
                target: '-=3'
            });

        $('.jcarousel-control-next')
            .jcarouselControl({
                target: '+=3'
            });*/

        $('.jcarousel-pagination')
            .on('jcarouselpagination:active', 'a', function() {
                $(this).addClass('active');
            })
            .on('jcarouselpagination:inactive', 'a', function() {
                $(this).removeClass('active');
            })
            .on('click', function(e) {
                e.preventDefault();
            })
            .jcarouselPagination({
                perPage: 1,
                item: function(page) {
                    return '<a href="#' + page + '">' + page + '</a>';
                }
            });
    });
})(jQuery);
