$(document).ready(function(){



  $("#top").hover(
    function(){ $(this).addClass('heartBeat') },
    function(){ $(this).removeClass('heartBeat') }
  );

  $("#middle").hover(
    function(){ $(this).addClass('heartBeat') },
    function(){ $(this).removeClass('heartBeat') }
  );

  $("#bottom").hover(
    function(){ $(this).addClass('heartBeat') },
    function(){ $(this).removeClass('heartBeat') }
  );

  console.log($("#top"))

});
