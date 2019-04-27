document.addEventListener("turbolinks:load", function() {

  $(".sortable-list").sortable(refresh);
  
});

$( function() {
    $( "#to-do, #completed" ).sortable({
      connectWith: ".connectedSortable"
    }).disableSelection();
  } );