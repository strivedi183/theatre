$(function(){
  convert_ticket_box();
  $('table').on('click', '.ticket_box', get_ticket_info);
  $('.btn_buy_ticket').click(buy_ticket);
});

var ticket_id = 0;
var theater_id = 0;

function convert_ticket_box()
{
  $('.ticket').each(change_ticket_box);
}

function change_ticket_box(index, element)
{
  var box = $(element);
  box.addClass('ticket_box');
  box.removeClass('ticket');
}

function get_ticket_info()
{
  console.log('test');
  var box = $(this);
  box.css('background-color','gray');
  var theater = box.parent().parent().prev();
  theater_id = parseInt(theater.text());
  var ticket = box.next();
  ticket_id = parseInt(ticket.text());
}

function buy_ticket()
{
  var token = $('input[name=authenticity_token]').val();
  console.log(theater_id);
  console.log(ticket_id);

  $.ajax({
    dataType: "json",
    type: "post",
    url: "/theaters/purchase",
    data: {id:ticket_id, authenticity_token:token}
  }).done(display_tickets_bought)
}

function display_tickets_bought(message)
{
  console.log('thanks');
  console.log(message);
  var number = parseInt(message.id);
  console.log(number);
  var ticket_spot = $(table).find('.ticket_id').eq(number);
  console.log(ticket_spot);
}
