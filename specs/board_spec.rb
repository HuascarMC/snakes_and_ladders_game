require_relative('../token.rb')
require_relative('../dice.rb')
require_relative('../board.rb')
require('minitest/autorun')
require('minitest/rg')

class TestBoard < MiniTest::Test
  def setup
    positions = (1..25).to_a
    @dice = Dice.new('Dice')
    @tokens = Token.new('Player_1')
    @ladder_5 = Ladder.new(15)
    @ladder_10 = Ladder.new(10, 20)
    ladders = [@ladder_5, @ladder_10]
    @board = Board.new('Snakes and Ladders', positions, @tokens, ladders)
  end

  def test_board_name
    assert_equal('Snakes and Ladders', @board.name)
  end

  def test_move_token_up_ladder
    @token.move_token_up_ladder(@ladder_5)
    assert_equal(@token.position, )
  end

  # def test_board_gets_token_position
  #   @token.token_move_position(@dice)
  #   assert_equal(@token.position, @board.token_position_on_board)
  # end
end
