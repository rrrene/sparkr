module Sparkr
  class Sparkline
    TICKS = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)

    def initialize(_numbers)
      numbers = _numbers.map(&:to_i)
      step_height = (numbers.max - numbers.min) / (TICKS.size - 1).to_f

      @ticks = numbers.map do |n|
        index = ((n - numbers.min) / step_height).to_i
        TICKS[index]
      end
    end

    def to_s
      @ticks.join('')
    end
  end
end
