#!/usr/bin/env ruby
#Matches reg. expression that has 2 to 5 t character between 'hbt' & 'n'

puts(ARGV[0].scan(/hbt{2,5}n/).join)
