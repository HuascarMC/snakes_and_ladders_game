require_relative('../ladder.rb')
require_relative('../token.rb')
require('minitest/autorun')
require('minitest/rg')

class LadderTest < MiniTest::Test
  def setup
    @ladder_5 = Ladder.new(5, 15)
    @ladder_10 = Ladder.new(10, 20)
  end
end
