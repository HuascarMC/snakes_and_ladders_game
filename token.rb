class Token

  attr_reader :name
  attr_accessor :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def move_token(given_position)
    @position += given_position
    puts "Your token has been moved to position #{@position}"
    return @position
  end
end
