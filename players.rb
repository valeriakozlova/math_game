class Players

    attr_reader :name, :life
  
    def initialize(name)
      @name = name
      @life = 3
    end
  
    def wrong
        puts "#{name}, seriously? No!"
        puts "life: #{life}"
        @life -= 1
    end

    def right
        puts "#{name}, yes! You are correct."
    end

    def status
        "#{life}/3"
    end
    
    def dead?
        @life == 0
    end 

end


