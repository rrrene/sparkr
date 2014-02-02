# encoding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/test_helper')

describe ::Sparkr do
  it "should find work like holman/spark" do
    assert_sparkline '▁▂▃▄▅▆▇█', [1, 2, 3, 4, 5, 6, 7, 8]
    assert_sparkline '▁▂█▅▂', [1, 5, 22, 13, 5]
    assert_sparkline '▁█', [5.5, 20]
    assert_sparkline '▁▁▁▁▃▁▁▁▂█', [1, 2, 3, 4, 100, 5, 10, 20, 50, 300]
    assert_sparkline '▁▄█', [1, 50, 100]
    assert_sparkline '▁▃█', [2, 4, 8]
    assert_sparkline '▁▂▃▄▂█', [0, 30, 55, 80, 33, 150]
    assert_sparkline '▁▂▄▆█', [1, 2, 3, 4, 5]
  end

  it "should find work with equal numbers" do
    assert_sparkline '▁▁', [10, 10]
  end

  it ".sparkline should work with arity == 2" do
    sparkline = Sparkr.sparkline([5.5, 20]) do |tick, number|
      if number < 6.0
        tick = tick + "-"
      else
        tick
      end
    end
    assert_equal '▁-█', sparkline
  end

  it ".sparkline should work with arity == 3" do
    sparkline = Sparkr.sparkline([5.5, 20]) do |tick, number, index|
      if index == 1
        tick = tick + "-"
      else
        tick
      end
    end
    assert_equal '▁█-', sparkline
  end
end
