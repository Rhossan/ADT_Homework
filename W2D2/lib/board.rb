require 'byebug'
class Board
  attr_accessor :cups, :player1, :player2

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {Array.new}
    (0..5).each do |i|
      place_stones(i)
    end
    (7..12).each do |i|
      place_stones(i)
    end
    # debugger
    # p @cups
  end

  def place_stones(idx)
    # helper method to #initialize every non-store cup with four stones each
    @cups[idx] += [:stone, :stone, :stone, :stone]
  end

  def valid_move?(start_pos)
    raise ArgumentError.new('Invalid starting cup') if start_pos < 1 || start_pos > 13
    return true
  end

  def make_move(start_pos, current_player_name)
    if @player1 == current_player_name
      current_player = @player1
    else
      current_player = @player2
    end

    hand = []
    until cups[start_pos] == []#current_player.cups[start_pos] == []
      hand << cups[start_pos].pop
    end
    hand
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[1..6].all? { |cup| cup.empty? }  || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    p1_points = @cups[6].size
    p2_points = @cups[13].size

    if p2_points == p1_points
      return :draw
    else
      p1_points > p2_points ? @player1 : @player2
    end
  end
end
