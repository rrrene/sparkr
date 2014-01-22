# encoding: utf-8

module Sparkr
  class CLI
    def self.run(*args)
      puts Sparkline.new(args.map(&:to_f)).to_s
    end
  end
end
