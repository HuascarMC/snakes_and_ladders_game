class Ladder

  attr_reader :start_position, :end_position

  def initialize(start_position, end_position)
    @start_position = start_position
    @end_position = end_position
  end

  def ladder_moves_token_forward(token)
    if token.position == @start_position
      token.position = @end_position
    end
  end
end
