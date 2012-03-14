# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

if !defined?(SecureRandom)
  begin
    # First we will try to load the Ruby standard library
    require 'securerandom'
  rescue
    # Second we will try to load our own SecureRandom gem library
    require 'sixarm_ruby_secure_random'
  end
end


class PasswordSalt < String

 COUNT = 8
 CHARS = ('a'..'z').to_a

 def initialize
  super(Array.new(COUNT){CHARS[SecureRandom.random_number(CHARS.size)]}.join)
 end

end
