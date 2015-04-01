$(function(){
  function initialize() {
    var mapOptions = {
      center: { lat: 40.7, lng: -73.9},
      zoom: 11
    };
    var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
  }
  google.maps.event.addDomListener(window, 'load', initialize);
});