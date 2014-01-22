# encoding: utf-8

require "sparkr/cli"
require "sparkr/sparkline"
require "sparkr/version"

module Sparkr
  def self.sparkline(*args)
    Sparkline.new(*args).to_s
  end
end
