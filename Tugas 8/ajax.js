$(document).ready(function () {
  $('#shoutbutton').click(function () {
    $.ajax({
      type: 'GET', // Ganti ke "POST" jika ingin menggunakan POST
      url: 'reply.php',
      data: $('#form1').serialize(),
      success: function (rsp) {
        $('#data').append('<div>' + rsp + '</div>');
      },
      error: function (rsp) {
        alert(rsp);
      },
    });
  });
});
