require_relative('../token.rb')
require_relative('../dice.rb')
require_relative('../board.rb')
require('minitest/autorun')
require('minitest/rg')

class TestGame < MiniTest::Test
  def setup
    @dice = Dice.new('Dice')

    @tokens = Token.new('Player_1')

    @ladder_5 = Ladder.new(5, 15)
    @ladder_10 = Ladder.new(13, 22)

    @snake_20 = Snake.new(20, 10)
    @snake_7 = Snake.new(7, 2)

    positions = (0..25).to_a
    @board = Board.new('Snakes and Ladders', positions)
  end

  def test_game
    @token.move_token(@dice)

  end
end
