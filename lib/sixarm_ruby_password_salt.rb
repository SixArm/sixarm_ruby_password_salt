# -*- encoding: utf-8 -*-
=begin rdoc

= SixArm Ruby Gem » PasswordSalt

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: Your choice of BSD, MIT, LGPL, or CreativeCommons Non-commercial Share Alike

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


if !defined?(SecureRandom) then require 'sixarm_ruby_secure_random' end


class PasswordSalt < String

 COUNT = 8
 CHARS = ('a'..'z').to_a

 def initialize
  super(Array.new(COUNT){CHARS[SecureRandom.random_number(CHARS.size)]}.join)
 end

end
