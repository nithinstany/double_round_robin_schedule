# Round Robin Tournament

This little ruby gem implements the [Round Robin Tournament](http://en.wikipedia.org/wiki/Round-robin_tournament#Scheduling_algorithm) scheduling. It is useful when you want a competition "in which each contestant meets all other contestants in turn", or if you have a classroom of students and want them to work in pairs, but with a different partner every day.

## Installation

Add this line to your application's Gemfile:

    gem 'double_round_robin_schedule'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install double_round_robin_schedule

## Usage

```ruby
require "double_round_robin_schedule"

# Compute all the possible teams for each day in the classroom
playing_teams = %w(team1 team2 team3 team4)
matches = DoubleRoundRobinSchedule.schedule(playing_teams)

# Print for each day, each team
matches.each_with_index do |day, index|
  day_teams = day.map { |team| "(#{team.first}, #{team.last})" }.join(", ")
  puts "Day #{index + 1}: #{day_teams}"
end

# Day 1: (team2, team4), (team3, team1)
# Day 2: (team3, team4), (team1, team2)
# Day 3: (team1, team4), (team2, team3)
```

## Contributing

1. Fork it ( http://github.com/nithinstany/double_round_robin_schedule/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
