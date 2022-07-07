<?php
header(($_SERVER['SERVER_PROTOCOL'] ?? 'HTTP/1.0').' 503 Service Temporarily Unavailable',true,503);
header('Retry-After: 3600');
header('X-Powered-By:'); //hide PHP
?><!DOCTYPE html>
<!-- Source: https://www.wmtips.com/html/howto-make-a-perfect-site-maintenance-page.htm -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nr1 - Site is down...</title>
<style type="text/css">
* {
  box-sizing: border-box;
}
html, body {
height: 100%;
margin: 0;
background: #000;
}
main {
height: 100%;
margin: 0 auto;
max-width: 700px;
padding: 30px;
display: table;
text-align: center;
}
main > * {
display: table-cell;
vertical-align: middle;
}

body
{
font: 20px Helvetica, sans-serif; color: #fff;
}
@keyframes blink {50% { color: transparent }}
.dot { animation: 1s blink infinite }
.dot:nth-child(2) { animation-delay: 250ms }
.dot:nth-child(3) { animation-delay: 500ms }
</style>
</head>
<style>
  body { text-align: center; padding: 150px; }
  h1 { font-size: 50px; }
  body { font: 20px Helvetica, sans-serif; color: #333; }
  article { display: block; text-align: left; width: 650px; margin: 0 auto; }
  a { color: #dc8100; text-decoration: none; }
  a:hover { color: #333; text-decoration: none; }
</style>
<body>
<main>
<div>
<article>
<h1><font color="orange">Nr1</font> server is down<span class="dot">.</span><span class="dot">.</span><span class="dot">.</span></h1>
    <div>
        <p>Site is taken offline until further notice, no estimated time of arrival can be given, sorry for this and the url you tried to visit brought you here instead of what you tried to visit.You can always <a href="mailto:wuseman@nr1.nu"> <font color="white">send an email</font></a>, otherwise happy hacking in the dark and <font color="#320e1e">never</font> give up!</p>
        <p>&mdash; <font color="white">wuseman</font><span class="dot">.</span><span class="dot">.</span><span class="dot">.</span></h1>
    </div>
</div>
</article>
</main>
</body>
</html>