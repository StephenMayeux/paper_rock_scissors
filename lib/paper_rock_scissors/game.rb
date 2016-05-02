module PaperRockScissors

  class Game

    SYMBOLS = {"R" => "S", "S" => "P", "P" => "R"}

    def initialize(players=1)
      @player1 = Human.new
      if players == 1
        @player2 = Computer.new
      else
        @player2 = Human.new
      end
    end

    def play
      loop do
        move1 = @player1.get_move

        move2 = @player2.get_move

        if move1 == move2
          puts "Tie! Try again!"
          next
        else
          check_winner(move1, move2)
        end

        break
      end
    end

    def check_winner(move1, move2)
      if SYMBOLS[move1] == move2
        puts "Player 1 is the winner!"
      else
        puts "Player 2 is the winner!"
      end
    end

  end

  class Human

    def get_move
      print "Choose (P) for paper, (R) for rock, or (S) for scissors. >>"
      move = gets.chomp.upcase
      check_move(move)
    end

    def check_move(move)
      if %w(P R S).include?(move)
        return move
      else
        puts "Invalid Choice!"
        get_move
      end
    end

  end

  class Computer

    def get_move
      %w(P R S).sample
    end

  end

end
