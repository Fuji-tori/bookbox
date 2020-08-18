$(function(){
  $("ul.mypage-left li").click(function(){
    $("ul.mypage-left li.selected").removeClass("selected");
    $(this).addClass("selected");
  });
});