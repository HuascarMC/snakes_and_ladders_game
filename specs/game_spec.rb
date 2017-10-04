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
    @game = Game.new('Snakes and Ladders')

    @dice = Dice.new('Dice')

    @token = Token.new('Player_1')

    @ladder_5 = Ladder.new(5, 15)
    @ladder_13 = Ladder.new(13, 22)

    @snake_19 = Snake.new(19, 10)
    @snake_7 = Snake.new(7, 2)

    positions = [@ladder_5, @snake_7, @ladder_13, @snake_19]
    @board = Board.new('Snakes and Ladders', positions)
  end

  def test_add_point
    @game.add_point()
    assert_equal(1, @game.score)
  end

  # def test_game_says_rolling
  #   assert_equal("Dice is rolling!", @game.say_roll)
  # end

  def test_game
    @game.say_roll()
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)
  end
end
