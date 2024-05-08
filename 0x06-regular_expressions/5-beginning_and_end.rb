#!/usr/bin/env ruby
#Mathes string that starts with 'h' and ends with 'n'
#with single character in between

puts(ARGV[0].scan(/h.{1}n/).join)
