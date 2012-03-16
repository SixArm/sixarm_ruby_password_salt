# -*- coding: utf-8 -*-
require 'test/unit'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_password_salt'

class Testing < Test::Unit::TestCase

 def test_all
  20.times{
   x=PasswordSalt.new
   assert(x.is_a?(String))
   assert_equal(x.length,PasswordSalt::COUNT)
   assert(x=~/^[a-z]+$/,"lowercase letters:#{x}")
  }
 end

end
