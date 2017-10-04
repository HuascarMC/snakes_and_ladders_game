require_relative('../ladder.rb')
require_relative('../token.rb')
require('minitest/autorun')
require('minitest/rg')

class LadderTest < MiniTest::Test
  def setup
    @ladder_5 = Ladder.new(5, 15)
    @ladder_13 = Ladder.new(13, 22)
    @token = Token.new('Player_1')
  end

  def test_ladder_start_position
    assert_equal(5, @ladder_5.start_position())
  end

  def test_ladder_end_position
    assert_equal(22, @ladder_10.end_position())
  end

  def test_ladder_moves_token_forwards
    @ladder_10.ladder_moves_token_forward(@token)
    assert_equal(@ladder_10.end_position(), @token.position())
  end
end
