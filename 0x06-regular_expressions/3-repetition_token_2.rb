#!/usr/bin/env ruby
#Mathes string with 1 or more t characters between 'hb' and 'n'

puts(ARGV[0].scan(/hbt+n/).join)
