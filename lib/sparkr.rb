# encoding: utf-8

require "sparkr/cli"
require "sparkr/sparkline"
require "sparkr/version"

module Sparkr
  def self.sparkline(*args, &block)
    sparkline = Sparkline.new(*args)
    if block
      sparkline.format(&block)
    end
    sparkline.to_s
  end
end
