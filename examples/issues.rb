require 'sparkr'

open_issue_count = 3
closed_issue_count = 13

list = [open_issue_count, closed_issue_count]
puts "Issues: " + Sparkr.sparkline(list)
