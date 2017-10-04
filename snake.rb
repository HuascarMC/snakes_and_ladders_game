class Snake

  attr_reader :start_position, :end_position

  def initialize(start_position, end_position)
    @start_position = start_position
    @end_position = end_position
  end
end
