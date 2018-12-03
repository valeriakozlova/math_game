class Players

    attr_reader :name
    attr_accessor :life
  
    def initialize(name)
      @name = name
      @life = 3
    end
  
    def wrong
        puts "#{@name}, seriously? No!"
        @life -= 1
    end

    def right
        puts "#{@name}, yes! You are correct."
    end

    def status
        "#{@life}/3"
    end
    
    # vs #{opponent.name}: #{opponent.life}/3"


    def dead?
        @life == 0
    end 

end


