# coding: us-ascii

$VERBOSE = true

require_relative '../lib/abb'

p Abb.fold('google') #=> "ggl"

require_relative '../lib/abb/ext'

p 'google'.abb  #=> "ggl"
p 'Japan'.abb   #=> "Jpn"
p 'American Standard Code for Information Interchange'.abb  #=> "ASCII"