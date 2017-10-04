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
    @ladder_10 = Ladder.new(13, 22)

    @snake_20 = Snake.new(20, 10)
    @snake_7 = Snake.new(7, 2)

    positions = (0..25).to_a
    @board = Board.new('Snakes and Ladders', positions)
  end

  def test_board_name
    assert_equal('Snakes and Ladders', @board.name)
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
