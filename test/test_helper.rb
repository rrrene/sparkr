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
  unless numbers.uniq.size == 1 # all numbers are the same
    assert actual.include?('█'), "there must be a maximum"
  end
  assert_equal expected, actual
end
