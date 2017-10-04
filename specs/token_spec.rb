require_relative('../token.rb')
require_relative('../dice.rb')
require('minitest/autorun')
require('minitest/rg')

class TestToken < MiniTest::Test
  def setup
    @token = Token.new('Player_1')
    @dice = Dice.new('Dice')
  end

  def test_token_name
    assert_equal('Player_1', @token.name())
  end

  def test_token_position
    assert_equal(0, @token.position())
  end

  def test_move_token
    @token.move_token(@dice)
    assert(0 < @token.position())
  end


end
