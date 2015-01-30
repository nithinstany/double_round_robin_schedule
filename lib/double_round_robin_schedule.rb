require "double_round_robin_schedule/version"
require 'rubygems'

module DoubleRoundRobinSchedule
  
  def self.schedule(all_teams)
  	numweeks = (all_teams.length - 1) * 2
    halfsize = all_teams.length / 2

    teams = all_teams.dup
    temp = all_teams.dup
    teams.shift
    team_size = teams.length
    week = 0
    games = []

    while( week < numweeks) do 
    	week_matches = []
      if (week % 2 == 0)
        teamIdx = week % team_size
        week_matches <<  [teams[teamIdx],  temp[0] ]
        idx = 0
        while( idx < halfsize) do 
          firstTeam = (week + idx) % team_size
          secondTeam = ((week + team_size) - idx) % team_size
          week_matches <<  [teams[firstTeam], teams[secondTeam] ] if (firstTeam != secondTeam)
          idx = idx + 1
        end
      end

      if (week % 2 != 0)
        teamIdx = week % team_size
        week_matches <<  [temp[0] , teams[teamIdx]] 
      	idx = 0
     		while( idx < halfsize) do 
          firstTeam = (week + idx) % team_size
          secondTeam = ((week + team_size) - idx) % team_size
          week_matches <<  [teams[secondTeam], teams[firstTeam]] if (firstTeam != secondTeam)
          idx = idx + 1
        end
      end
      games[week] ||= []
      games[week] += week_matches
      week = week + 1
    end  
    games
  end
end
