#!/usr/bin/env ruby
#Must match 10 digit phone number

puts(ARGV[0].scan(/\A\d{10}$/).join)
