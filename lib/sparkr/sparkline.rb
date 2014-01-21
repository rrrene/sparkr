module Sparkr
  class Sparkline
    TICKS = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)
    DEFAULT_SEPARATOR = ''

    def initialize(_numbers)
      numbers = _numbers.map(&:to_i)
      step_height = (numbers.max - numbers.min) / (TICKS.size - 1).to_f
      step_height = 1 if step_height == 0

      @ticks = numbers.map do |n|
        index = ((n - numbers.min) / step_height).to_i
        TICKS[index]
      end
    end

    def to_s(sep = nil)
      @ticks.join(sep || DEFAULT_SEPARATOR)
    end
  end
end
