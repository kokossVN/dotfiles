#!/bin/sh

read -p "File Name: "

echo \
"<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>$REPLY</title>
</head>
<body>
	<p>Hello $REPLY.html</p>
</body>
</html>" > "$REPLY".html
echo created "$REPLY"

