line_width = 40
str_header = "Table of contents"
str_chapter1 = "Chapter 1 : Getting Started"
str_chapter2 = "Chapter 2 : Numbers"
str_chapter3 = "Chapter 3 : Letters"
str_title1 = "page 1"
str_title2 = "page 9"
str_title3 = "page 30"
puts(str_header.center(line_width))
puts(str_chapter1.ljust(line_width/2) + str_title1.rjust(line_width/2))
puts(str_chapter2.ljust(line_width/2) + str_title2.rjust(line_width/2))
puts(str_chapter3.ljust(line_width/2) + str_title3.rjust(line_width/2))
