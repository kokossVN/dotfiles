#!/bin/sh


touch index.html style.css script.js

echo '
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="style.css">	
</head>
<body>
	<p>Hello World!!</p>
	<div id="hello"></div>
	<script src="script.js"></script>
</body>
</html>
' > index.html

echo 'added index.html'

echo 'document.getElementById("hello").innerHTML="Hello JS"' > script.js

echo 'added script.js'

echo 'p {text-align: center;}' > style.css

echo 'added style.css'
echo 'done!'
