var tag = 0;
$(function(){
  $("#del").click(function(){
      $("#memberList tbody tr:last").remove();
  });
})