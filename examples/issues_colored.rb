require 'sparkr'
#
# You need Term::ANSIColor for this example:
#
#     $ gem install term-ansicolor
#
require 'term/ansicolor'

class String
  include Term::ANSIColor
end

open_issue_count = 3
closed_issue_count = 13

list = [open_issue_count, closed_issue_count]
sparkline = Sparkr.sparkline(list) do |tick, count, index|
  if index == 0
    tick.color(:red)
  else
    tick.color(:green)
  end
end
puts "Issues: " + sparkline
