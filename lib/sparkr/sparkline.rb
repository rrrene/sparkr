# encoding: utf-8

module Sparkr
  class Sparkline
    TICKS = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)
    DEFAULT_SEPARATOR = ''

    def initialize(_numbers)
      numbers  = normalize_numbers(_numbers)
      one_step = step_height(numbers)

      @ticks = numbers.map do |n|
        index = (n / one_step).to_i
        TICKS[index]
      end
    end

    # Returns the normalized equivalent of a given list
    #
    #   normalize_numbers([3,4,7])
    #   # => [0,1,4]
    #
    # @return [Fixnum] the normalized equivalent of the given +_numbers+
    def normalize_numbers(_numbers)
      numbers = _numbers.map(&:to_i)
      min = numbers.min
      numbers.map do |n|
        n - min
      end
    end

    # @return [Float] the numerical "height" of a single bar "step"
    def step_height(_numbers)
      min, max = _numbers.minmax
      actual_height = max - min
      step = actual_height / steps.to_f
      if step == 0
        1
      else
        step
      end
    end

    # @return [Fixnum] the count of steps between the smallest and highest bar
    def steps
      TICKS.size - 1
    end

    # @param sep [String,nil] separator used to join the bars of the sparkline
    # @return [String] the sparkline, seperated by +sep+ (defaults to '')
    def to_s(sep = nil)
      @ticks.join(sep || DEFAULT_SEPARATOR)
    end
  end
end
