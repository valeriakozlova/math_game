class Turn

    attr_reader :current_player, :opponent
  
    def initialize(players)
      @players = players.shuffle
      @current_player = nil
      @opponent = nil
      @round = 1
    end
  
    def get_current_player
      @players.first
    end
  
    def new_turn
        puts ""
        puts "------ Round##{@round} ------"
        puts ""
        @current_player = get_current_player
        @opponent = get_opponent(@current_player)
        @players.rotate!
        @round += 1
    end
  
    # sample means pick randomly
    def get_opponent(current)
      @players.select{|player| player != current}.sample
    end
  
  end