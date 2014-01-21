require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'minitest/spec'
require 'minitest/autorun'
require 'bundler'
Bundler.require

def assert_sparkline(expected, actual)
  assert actual.index('▁'), "there must be a minimum"
  assert actual.index('█'), "there must be a maximum"
  assert_equal expected, actual
end
