 
require File.expand_path('../test_helper.rb', __FILE__)


class TestDoubleRoundRobinSchedule < MiniTest::Unit::TestCase
  def test_double_round_robin_schedule
    assert_equal(DoubleRoundRobinSchedule.schedule(['team1', 'team2', 'team3', 'team4']), [[["team2", "team1"], ["team3", "team4"]], [["team1", "team3"], ["team2", "team4"]], [["team4", "team1"], ["team2", "team3"]], [["team1", "team2"], ["team4", "team3"]], [["team3", "team1"], ["team4", "team2"]], [["team1", "team4"], ["team3", "team2"]]])
    assert_equal(DoubleRoundRobinSchedule.schedule(['team1', 'team2', 'team3']), [[["team2", "team1"]], [["team1", "team3"]], [["team2", "team1"]], [["team1", "team3"]]])
    assert_equal(DoubleRoundRobinSchedule.schedule(['team1', 'team2']),   [[["team2", "team1"]], [["team1", "team2"]]]  )
  end
end