require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'minitest/spec'
require 'minitest/autorun'
require 'bundler'
Bundler.require

def fixture_path(name)
  File.join(File.dirname(__FILE__), "fixtures", name.to_s)
end
