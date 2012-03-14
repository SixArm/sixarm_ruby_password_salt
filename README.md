# SixArm.com » Ruby » <br> PasswordSalt class to generate secure user-friendly passwords

* Docs: <http://sixarm.com/sixarm_ruby_password_salt/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_password_salt>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Password tool to create strong user-friendly salt for hashes,
using Ruby's secure random cryptographic functions.

For docs go to <http://sixarm.com/sixarm_ruby_password_salt/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_password_salt

Bundler:

    gem "sixarm_ruby_password_salt", "=1.2.1"

Require:

    require "sixarm_ruby_password_salt"


## Example

Generate a salt:

    require 'sixarm_ruby_password_salt'
    PasswordSalt.new => "ezkabtsu"

This generates a secure random 8 character salt
of all lowercase letters with 26^8 combinations.
This can easily be sent via web URIs, email, etc.


## SecureRandom

Ruby 1.8.6 and older does not have a secure random number method,
so this gem checks to see if the SecureRandom class is defined;
if it is not, then we require our sixarm_ruby_secure_random gem.

