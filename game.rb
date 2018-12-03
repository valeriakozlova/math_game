
require_relative './players'
require_relative './turn'

class Game

  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")

    @players=[@player1, @player2]
    @turn = Turn.new(@players)
  end

  def run

    while(!game_over?)

        @turn.new_turn
        current_player = @turn.current_player
        opponent = @turn.opponent
        number_one = rand(20) + 1
        number_two = rand(20) + 1
        sum = number_one + number_two
        puts "#{current_player.name}: What does #{number_one} plus #{number_two} equal?"
        number  = gets.chomp.to_i
        if number == sum 
            current_player.right
        else
            current_player.wrong
        end
        puts "P1: #{@player1.status} vs P2: #{@player2.status}"
    end

    end_game

  end

  def game_over?
    @players.any?{|player| player.dead?}
  end

  def end_game
    puts ""
    puts "====== Game Over! ======="
    winner = @players.select{|player| !player.dead?}.first
    puts "#{winner.name} wins with a score #{winner.status}"
  end

end