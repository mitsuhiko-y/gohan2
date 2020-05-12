$(function(){ 
  function buildHTML(comment){
    var html =
      `<tbody>
        <tr style="height: 80px;">
          <td>
            <a href="/posts/${comment.post_id}/comments/${comment.id}/edit">${comment.content}</a>
          </td>
          <td class="sender">
            ${comment.user_nickname}
            <br>
            ${comment.created_at}
            <br>
          </td>
        </tr>
      </tbody>`
    return html;
  }

$('#new_comment').on('submit', function(e){
    console.log('OK')
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
    })
    .fail(function() {
      alert('error');
    })
})
});
