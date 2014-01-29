# encoding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

describe ::Sparkr::CLI do
  it "should find work" do
    out, err = capture_io do
      ::Sparkr::CLI.run("1", "2", "3", "4", "100", "5", "10", "20", "50", "300")
    end
    refute out.empty?, "there should be some output"
    assert err.empty?, "there should be no errors"
    assert_equal "▁▁▁▁▃▁▁▁▂█\n", out
  end
end
