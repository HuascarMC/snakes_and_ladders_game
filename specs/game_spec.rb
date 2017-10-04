require_relative('../token.rb')
require_relative('../game.rb')
require_relative('../dice.rb')
require_relative('../snake.rb')
require_relative('../ladder.rb')
require_relative('../board.rb')
require('minitest/autorun')
require('minitest/rg')

class TestGame < MiniTest::Test
  def setup
    @game = Game.new('user')
    @dice = Dice.new('Dice')

    @token = Token.new('Player_1')

    @ladder_5 = Ladder.new(5, 15)
    @ladder_13 = Ladder.new(13, 22)

    @snake_20 = Snake.new(20, 10)
    @snake_7 = Snake.new(7, 2)

    positions = (0..25).to_a
    @board = Board.new('Snakes and Ladders board', positions)
  end

  def test_game
    @token.move_token(@dice.roll_dice)
    @snake_20.snake_moves_token_back(@token)
    @ladder_13.ladder_moves_token_forward(@token)
  end
end
