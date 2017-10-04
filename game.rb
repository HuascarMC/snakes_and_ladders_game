class Game
  attr_reader :user, :score
  def initialize(user)
    @user = user
    @score = 0
  end
end
