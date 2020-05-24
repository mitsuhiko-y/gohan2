$(function(){

  $('.liked_posts_button').click(
    function() {
      $('.liked_cards_body').slideDown();
    }
  );


  $('.commented_posts_button').click(
    function() {
      $('.commented_cards_body').slideDown();
    }
  );

});

// 条件分岐
// $(function(){
//   $('.commented_posts_button').click(function() {
//     var $post = $(this).find('.card-body');
//     if($post.hasClass('open')) {
//       $post.slideUp();
//       $post.removeClass('open');
//     } else {
//       $post.slideDown();
//       $post.addClass('open');
//     }    
//   });
// });