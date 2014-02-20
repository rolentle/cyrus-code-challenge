require 'simplecov'
SimpleCov.start
$:.unshift File.expand_path("./../../lib", __FILE__)
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'cyrus_app'
