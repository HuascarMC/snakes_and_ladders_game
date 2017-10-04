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



  def test_player_results_won
    @token.move_token(25)
    @board.add_point(@token)
    assert_equal("+", @game.player_results(@board))
  end

  def test_player_results_lost
    assert_equal("-", @game.player_results(@board))
  end

  def test_game
    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)


    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)


    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)


    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)


    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)


    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)


    @game.say_roll(@board)
    @token.move_token(@dice.roll_dice)
    @board.board_checks_token_position(@token)
    @board.add_point(@token)
    @game.player_results(@board)
  end
end
