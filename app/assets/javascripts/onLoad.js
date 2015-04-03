$(function(){
  addAboutModalListener();
  addModalListener();
  initializeMap();
});

function initializeMap() {
  var mapOptions = {
    center: { lat: 40.7, lng: -73.9},
    zoom: 11
  };
  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

}

function addModalListener(){
  $('li.cuisine-li').children('form').on("submit", getCuisineFacts);
}

function addAboutModalListener(){
  $('button#about').on("click", showAbout);
}

function showAbout(){
  $('#aboutModal').modal('show');
}

function getCuisineFacts(){
    var cuisineType = $(this).children("input.btn").attr('value');
    var url = '/facts'
    $.ajax(url, {
      method: "POST",
      url: url,
      "data": {cuisine: cuisineType},
      dataType: "script",
      "complete": function(response){
      $('#myModal').children('div').children('div').children('div.modal-body').html("<h4>Did you Know?</h4><p>Here's something interesting:</p><p>"+response.responseText +"</p>")
      }
    });
    $('#myModal').modal('show');
}