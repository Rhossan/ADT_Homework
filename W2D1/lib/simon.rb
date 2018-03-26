class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      self.take_turn
    end
    self.game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    @seq.each do |color|
      user_color = gets.chomp
      unless color.first == user_color
        @game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.shuffle.first
  end

  def round_success_message
    "Round Success"
  end

  def game_over_message
    "Game is Over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
