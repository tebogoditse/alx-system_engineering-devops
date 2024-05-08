#!/usr/bin/env ruby
#Mathes string with 1 or more t characters between 'hb' and 'n'
#No match if any other character between 'hb' 'n' either than t

puts(ARGV[0].scan(/hbt*n/).join)
