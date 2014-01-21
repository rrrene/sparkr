require File.expand_path(File.dirname(__FILE__) + '/test_helper')

describe ::Sparkr do
  it "should find work" do
    assert_sparkline '▁▂▃▄▅▆▇█', Sparkr.sparkline([1,2,3,4,5,6,7,8])
    assert_sparkline '▁▂█▅▂', Sparkr.sparkline([1,5,22,13,5])
    assert_sparkline '▁█', Sparkr.sparkline([5.5,20])
    assert_sparkline '▁▁▁▁▃▁▁▁▂█', Sparkr.sparkline([1,2,3,4,100,5,10,20,50,300])
    assert_sparkline '▁▄█', Sparkr.sparkline([1,50,100])
    assert_sparkline '▁▃█', Sparkr.sparkline([2,4,8])
    assert_sparkline '▁▂▃▄▂█', Sparkr.sparkline([0,30,55,80,33,150])
    assert_sparkline '▁▂▄▆█', Sparkr.sparkline([1,2,3,4,5])
  end
end
