require_relative('../board.rb')
require_relative('../ladder.rb')
require_relative('../snake.rb')
require_relative('../token.rb')
require_relative('../dice.rb')
require('minitest/autorun')
require('minitest/rg')

class TestBoard < MiniTest::Test
  def setup
    @dice = Dice.new('Dice')

    @token = Token.new('Player_1')

    @ladder_5 = Ladder.new(5, 15)
    @ladder_13 = Ladder.new(13, 22)

    @snake_19 = Snake.new(19, 10)
    @snake_7 = Snake.new(7, 2)

    positions = [@ladder_5, @snake_7, @ladder_13, @snake_19]
    @board = Board.new('Snakes and Ladders', positions)
  end

  def test_board_name
    assert_equal('Snakes and Ladders', @board.name)
  end

  def test_add_point
    @game.add_point()
    assert_equal(1, @game.score)
  end

  def test_board_checks_token_on_ladder_5
    @token.move_token(5)
    @board.board_checks_token_position(@token)
  end

  def test_board_checks_token_on_snake_13
    @token.move_token(13)
    @board.board_checks_token_position(@token)
  end

  def test_board_checks_toke_on_ladder_7
    @token.move_token(7)
    @board.board_checks_token_position(@token)
  end

  def test_board_checks_toke_on_snake_19
    @token.move_token(19)
    @board.board_checks_token_position(@token)
  end

  # def test_move_token_up_ladder
  #   @token.move_token_up_ladder(@ladder_5)
  #   assert_equal(@token.position, )
  # end

  # def test_board_gets_token_position
  #   @token.token_move_position(@dice)
  #   assert_equal(@token.position, @board.token_position_on_board)
  # end
end
