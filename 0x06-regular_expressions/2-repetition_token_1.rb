#!/usr/bin/env ruby
#Matches if string is 'htn' or has a single b character between 'h' and 'tn' 

puts ARGV[0].scan(/hb?tn/).join
