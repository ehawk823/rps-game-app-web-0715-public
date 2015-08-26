class PlayTypeError < StandardError
end

class RPSGame

  attr_accessor :play

  def initialize(play)
    if RPSGame.valid_play?(play)
      @play = play
    else
      raise PlayTypeError.new
    end
  end

  def self.valid_play?(play)
    if play == :rock || play == :scissors || play == :paper
      return true
    else
      return false
    end
  end

  def computer_play
    choices = [:scissors, :rock, :paper]
    choice = rand(1..3)
    choices[choice]
  end

  def won?
    if @play == :rock && self.computer_play == :scissors
      return true
    elsif @play == :scissors && self.computer_play == :paper
      return true
    elsif @play == :paper && self.computer_play == :rock
      return true
    else
      return false
    end
  end

  def lost?
    if @play == :rock && self.computer_play == :paper
      return true
    elsif @play == :scissors && self.computer_play == :rock
      return true
    elsif @play == :paper && self.computer_play == :scissors
      return true
    else
      return false
    end
  end

  def tied?
    if @play == :rock && self.computer_play == :rock
      return true
    elsif @play == :scissors && self.computer_play == :scissors
      return true
    elsif @play == :paper && self.computer_play == :paper
      return true
    else
      return false
    end
  end

end
