# encoding: utf-8

require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'minitest/spec'
require 'minitest/autorun'
require 'bundler'
Bundler.require

def assert_sparkline(expected, numbers)
  actual = Sparkr.sparkline(numbers)

  assert actual.include?('▁'), "there must be a minimum"
  assert actual.include?('█'), "there must be a maximum"
  assert_equal expected, actual
end
