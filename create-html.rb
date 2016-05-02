#!/usr/bin/env ruby

puts <<-EOS
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no">
  <style>
    body {
      font-family: Arial;
      font-size: 20px;
      line-height: 40px;
    }
  </style>
</head>
<body>
  #{`./concat-files.sh | pandoc -f markdown_github -t html`}
</body>
</html>
EOS
