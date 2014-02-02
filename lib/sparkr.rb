# encoding: utf-8

require "sparkr/cli"
require "sparkr/sparkline"
require "sparkr/version"

module Sparkr
  # Returns a sparkline
  #
  # Example:
  #
  #   list = [open_issue_count, closed_issue_count]
  #   Sparkr.sparkline(list)
  #   # => "▁█"
  #
  # Example with block:
  #
  # Let's say you have your list of open and closed issues, but you
  # want to format it so the open ones are red and the closed ones are
  # green, so you can quickly see how you are doing. Let's further
  # suppose you use a gem that adds a #color method to String
  # for ANSI coloring.
  #
  #   line = Sparkr.sparkline(list) do |tick, count, index|
  #     if index == 0
  #       tick.color(:red)
  #     else
  #       tick.color(:green)
  #     end
  #   end
  #
  #   line
  #   # => "▁█" (colored, trust me)
  #
  # @param numbers [Array<String, Fixnum, Float>] the numbers to be rendered
  # @param &block [Proc] optional, can be used to format the rendered string
  #
  # @return [String]
  def self.sparkline(numbers, &block)
    sparkline = Sparkline.new(numbers)
    if block
      sparkline.format(&block)
    end
    sparkline.to_s
  end
end
