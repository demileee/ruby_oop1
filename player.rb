class Player
  def initialize
    puts "Welcome to this Adventure!"
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
    puts "You leveled up!"
  end

  def collect_treasure
    @gold_coins +=1
    puts "You collected a gold coin!"
    if (@gold_coins % 10) == 0
      self.level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    puts "You took #{damage} damage!"
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      puts "You lost a life!"
    elsif @health_points < 1 && @lives == 1
      self.restart
      puts "You died!"
    end
  end

  def restart
    puts "Game restarted."
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end
end

one = Player.new
one.collect_treasure
one.do_battle(10)
