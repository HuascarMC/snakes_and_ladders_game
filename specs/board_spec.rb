require_relative('../token.rb')
require_relative('../dice.rb')
require_relative('../board.rb')
require('minitest/autorun')
require('minitest/rg')

class TestBoard < MiniTest::Test
  def setup
    positions = (1..25).to_a
    @board = Board.new('Snakes and Ladders', positions)
  end

  def test_board_name
    assert_equal('Snakes and Ladders', @board.name)
  end

end
