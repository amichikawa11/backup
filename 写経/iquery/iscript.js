$(function(){
    $("p").hover(function(){
        $("h1").fadeOut();
    },function(){
        $("h1").fadeIn();
    });
});