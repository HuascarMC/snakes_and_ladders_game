require_relative('../token.rb')
require_relative('../dice.rb')
require_relative('../board.rb')
require('minitest/autorun')
require('minitest/rg')

class TestGame < MiniTest::Test
  def setup
    positions = (1..25).to_a
    @dice = Dice.new('Dice')
    @tokens = Token.new('Player_1')
    @ladder_5 = Ladder.new(5, 15)
    @ladder_10 = Ladder.new(10, 20)
    ladders = [@ladder_5, @ladder_10]
    @board = Board.new('Snakes and Ladders', positions, @tokens, ladders)
  end

  def test_move_token_on_board
    @token.token_move_position(@dice)
    @token.token_move_position(@dice)
    @token.token_move_position(@dice)
  end
end
