$(document).ready(function(){
  $('#teachers').sortable({
    axis: 'y',
    dropOnEmpty: false,
    handle: '.handle',
    cursor: 'crosshair',
    items: 'tr',
    opacity: 0.4,
    scroll: true,
    update: function(){
      $.ajax({
        url: '/teachers/sort',
        type: 'post',
        data: $('#teachers').sortable('serialize'),
        dataType: 'script',
        complete: function(request){
          $('#teachers').effect('highlight');
        }
      });
    }
  });
});
