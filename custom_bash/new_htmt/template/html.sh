#!/bin/sh

final="<!DOCTYPE html>\
<html lang=\"en\">\
<head>\
	<meta charset=\"UTF-8\">\
	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\
	<title> $file </title>\
	$css\
</head>\
<body>\
	<p>Hello $file.html</p>\
	$js\
</body>\
</html>"

echo $final
