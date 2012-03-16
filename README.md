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

    gem "sixarm_ruby_password_salt", "=1.3.0"

Require:

    require "sixarm_ruby_password_salt"


## High Security (Optional)

To enable high security	for all	our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_password_salt --test --trust-policy HighSecurity


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


## Changes

* 2012-03-16 1.3.0 Upgrade for Ruby 1.9.3, minitest/spec, and improved docs.


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2012 Joel Parker Henderson
