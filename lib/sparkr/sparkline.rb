require 'pry'

module Sparkr
  class Sparkline
    TICKS = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)

    def initialize(numbers)
      @step_count = TICKS.size
      @step_height = (numbers.max - numbers.min) / @step_count + 1

      indexes = numbers.map do |n|
        ((n - numbers.min) / @step_height).to_i
      end
      @ticks = indexes.map do |index|
        TICKS[index]
      end
      binding.pry
    end

    def to_s
      @ticks.join('')
    end
  end
end
