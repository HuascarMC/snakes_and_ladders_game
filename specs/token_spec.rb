require_relative('../token.rb')
require('minitest/autorun')
require('minitest/rg')

class TestToken < MiniTest::Test
  def setup
    @token = Token.new('Player_1', 1)
  end

  def test_token_name
    assert_equal('Player_1', @token.name())
  end

  def test_token_position
    assert_equal(1, @token.position())
  end
end
