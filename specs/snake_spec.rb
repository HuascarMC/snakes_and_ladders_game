require_relative('../snake.rb')
require_relative('../token.rb')
require('minitest/autorun')
require('minitest/rg')

class SnakeTest < MiniTest::Test
  def setup
    @snake_20 = Snake.new(20, 10)
    @snake_7 = Snake.new(7, 2)
    @token = Token.new('Player_1')
  end

  def test_snake_start_position
    assert_equal(20, @snake_20.start_position())
  end

  def test_snake_end_position
    assert_equal(2, @snake_7.end_position)
  end

  def test_snake_moves_token_back
    assert_equal(@snake_20.end_position, @token.position())
  end
end
