# encoding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

describe ::Sparkr::Sparkline do

  it "format should work with an empty array" do
    sparkline = Sparkr::Sparkline.new([])
    assert_equal '', sparkline.to_s
  end

  it "format should work with arity == 2" do
    sparkline = Sparkr::Sparkline.new([5.5,20])
    sparkline.format do |tick, number|
      if number < 6.0
        tick = tick + "-"
      else
        tick
      end
    end
    assert_equal '▁-█', sparkline.to_s
  end

  it "format should work with arity == 3" do
    sparkline = Sparkr::Sparkline.new([5.5,20])
    sparkline.format do |tick, number, index|
      if index == 1
        tick = tick + "-"
      else
        tick
      end
    end
    assert_equal '▁█-', sparkline.to_s
  end
end
