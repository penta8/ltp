line_length = 50
chapter_length = 12
page_length = 3
content_length = line_length - chapter_length - page_length

puts('Table of Contents'.center(line_length))
puts('Chapter 1:'.ljust(chapter_length) + 'Getting Started'.ljust(content_length) + 'page' + '1'.rjust(page_length))
puts('Chapter 2:'.ljust(chapter_length) + 'Numbers'.ljust(content_length) + 'page' + '9'.rjust(page_length))
puts('Chapter 3:'.ljust(chapter_length) + 'Letters'.ljust(content_length) + 'page' + '13'.rjust(page_length))

