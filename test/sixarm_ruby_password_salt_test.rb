# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "sixarm_ruby_password_salt"

describe PasswordSalt do

  before do
    P ||= PasswordSalt.new
  end

  it "creates passwords" do
    P.must_be_kind_of String
  end

  it "uses the given length" do
    P.length.must_equal PasswordSalt::COUNT
  end

  it "uses lowercase letters exclusively" do
    P.must_match /^[a-z]+$/
  end

end
