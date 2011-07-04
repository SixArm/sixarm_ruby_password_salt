# -*- coding: utf-8 -*-

=begin rdoc

= SixArm.com » Ruby » PasswordSalt class to generate secure user-friendly passwords

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2011 Joel Parker Henderson
License:: See LICENSE.txt file

PasswordSalt generates secure random strings suitable for password hash salt.

You can change how the salt is created using the optional parameters.

Example:
  require 'sixarm_ruby_password_salt'
  PasswordSalt.new => "ezkabtsu"

This generates a secure random 8 character salt
of all lowercase letters with 26^8 combinations.
This can easily be sent via web URIs, email, etc.

==SecureRandom

Ruby 1.8.6 and older does not have a secure random number method,
so this gem checks to see if the SecureRandom class is defined;
if it is not, then we require our sixarm_ruby_secure_random gem.

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
