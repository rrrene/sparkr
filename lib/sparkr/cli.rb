# encoding: utf-8

module Sparkr
  class CLI
    # Helper method to run an instance with the given +args+
    #
    # @see #run
    # @return [CLI] the instance that ran
    def self.run(*args)
      instance = new
      instance.run(*args)
      instance
    end

    # Runs sparkr with the given +args+
    # @return [void]
    def run(*args)
      if args.empty?
        puts help
      else
        sparkline = Sparkline.new(args.map(&:to_f))
        puts sparkline.to_s
      end
    end

    private

    # Returns usage information
    def help
      """
USAGE:
  sparkr [-h|--help] VALUE,...

EXAMPLES:
  sparkr 1 5 22 13 53
  ▁▁▃▂█
  sparkr 0,30,55,80,33,150
  ▁▂▃▄▂█
  echo 9 13 5 17 1 | sparkr
  ▄▆▂█▁
      """
    end
  end
end
