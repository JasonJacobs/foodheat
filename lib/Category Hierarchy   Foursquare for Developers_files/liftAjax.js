<!DOCTYPE html>
<html>
<head>
<title>foursquare</title>
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=1.0; user-scalable=1;" />
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  font-size: 1em;
  text-decoration: none;
  border: none;
  list-style: none;
  outline: none;
}
body,html {height: 100%;}
body {
  background: #ffffff;
  color: #4c4c4c;
  font: 13px/140% "Helvetica Neue", Helvetica, Arial, sans-serif;
}
a {
  color: #0cbadf;
  text-decoration: none;
}
h1 {
  font-size: 17px;
  font-weight: bold;
  margin: 10px 0;
}
h2 {
  font-size: 15px;
  font-weight: normal;
  margin: 10px 0;
}
#container {
  height: 230px;
  margin: -165px auto 0;
  position: relative;
  text-align: center;
  top: 50%;
  width: 32em;
}
.logomark {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  bottom: 20px;
  display: block;
  left: 50%;
  margin: 0 auto;
  margin-left: -30px;
  position: absolute;
  z-index: 2;
}
.wordmark {
  display: block;
  margin: 0 auto;
  width: 250px;
}
.formStyle {
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  -moz-box-shadow: inset rgba(0,0,0,.1) 0 0 3px;
  -webkit-box-shadow: inset rgba(0,0,0,.1) 0 0 3px;
  box-shadow: inset rgba(0,0,0,.1) 0 0 3px;
  background: #fcfcfc;
  border: 1px solid #d9d9d9;
  color: #4c4c4c;
  font-family: inherit;
  font-size: 13px;
  margin: 0 10px 10px 0;
  outline: none;
  padding: 7px;
  width: 220px;
  -moz-transition-duration: .33s;
  -moz-transition-property: background, border, color, opacity, box-shadow;
  -webkit-transition-duration: .33s;
  -webkit-transition-property: background, border, color, opacity, box-shadow;
  transition-duration: .33s;
  transition-property: background, border, color, opacity, box-shadow;
}
.formStyle:hover {border: 1px solid #bbb;}
.formStyle:focus {
  background: #fefefe;
  border: 1px solid #b3b3b3;
  color: #333;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
.greenButton {
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  background: #A7E300;
  background: -webkit-gradient(linear, left top, left bottom, from(#A7E300), to(#99D100));
  background: -moz-linear-gradient(top,  #A7E300,  #99D100);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#A7E300', endColorstr='#99D100');
  border: 1px solid #87b800;
  color: #fff;
  cursor: pointer;
  font-family: inherit;
  font-size: 11px;
  font-weight: bold;
  height: 30px;
  line-height: 28px;
  padding: 0 10px;
  text-align: center;
  text-shadow: rgba(0,0,0,.1) 0 -1px 0;
  text-transform: uppercase;
}
.greenButton:hover {
  background: #b2eb14;
  background: -webkit-gradient(linear, left top, left bottom, from(#b2eb14), to(#a4da14));
  background: -moz-linear-gradient(top,  #b2eb14,  #a4da14);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#b2eb14', endColorstr='#a4da14');
}
.greenButton:active {
  background: #99D100;
  background: -webkit-gradient(linear, left top, left bottom, from(#99D100), to(#A7E300));
  background: -moz-linear-gradient(top,  #99D100,  #A7E300);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#99D100', endColorstr='#A7E300');
}
@-webkit-keyframes fadeInDown{
  0%{
    opacity:0;
    -webkit-transform:translate3d(0, -25px, 0);
    transform:translate3d(0, -25px, 0)
  }
  100%{
    opacity:1;
    -webkit-transform:none;transform:none
  }
}
@keyframes fadeInDown{
  0%{
    opacity:0;
    -webkit-transform:translate3d(0, -25px, 0);
    -ms-transform:translate3d(0, -25px, 0);
    transform:translate3d(0, -25px, 0)
  }
  100%{
    opacity:1;
    -webkit-transform:none;
    -ms-transform:none;
    transform:none
  }
}
@media screen and (max-width: 340px) {
  #container {
    height: auto !important;
    margin: 40px auto 0 !important;
    top: 0 !important;
    width: 22em !important;
  }
}
</style>
</head>
<body>
  <div id="container">
    <img class="wordmark" src="/wordmark.png" />
    <h1>We couldn't find the page you're looking for.</h1>
    <h2>Search for great places nearby:</h2>
    <form action="https://foursquare.com/explore" method="GET">
      <input type="text" class="formStyle" name="q">
      <button name="submit" class="greenButton" type="submit">Search</button>
    </form>
  </div>
  <img class="logomark" width="40" src="/logomark.png">
  <script src="https://www.google-analytics.com/ga.js" type="text/javascript"></script>
  <script type="text/javascript">
    try {
      var pageTracker = _gat._getTracker('UA-2322480-5');
      pageTracker._trackPageview('/404');
    } catch(err) {}
  </script>
</body>
</html>
