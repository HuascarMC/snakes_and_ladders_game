require_relative('../dice.rb')
require('minitest/autorun')
require('minitest/rg')

class TestDice < MiniTest::Test
  def setup
    @dice = Dice.new('Dice')
  end

  def test_dice_name
    assert_equal('Dice', @dice.name)
  end

  def test_numbers_in_dice
    assert_equal(6, @dice.numbers_in_dice.length)
  end

  def test_roll_dice
    result = @dice.roll_dice
    assert_equal(true , @dice.numbers_in_dice.include?(result))
  end
end
