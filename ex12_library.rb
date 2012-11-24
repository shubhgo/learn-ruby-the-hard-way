require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line}
  puts "base uri: #{f.base_uri}"
  puts "content type: #{f.content_type}"
  puts "character set: #{f.charset}"
  puts "content encoding: #{f.content_encoding}"
  puts "last modified: #{f.last_modified}"
end
