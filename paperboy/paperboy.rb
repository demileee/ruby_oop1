class Paperboy

  def initialize
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def name
    @name
  end

  def earnings
    @earnings
  end

  def name=(name)
    @name = name
  end

  def start_street=(start)
    @start_street = start.to_i
  end

  def end_street=(endd)
    @end_street = endd.to_i
  end

  def quota
    @quota += (@experience/2)
  end

  def deliver
    @experience = @end_street - @start_street + 1
    if @experience <= @quota
      @earnings += 0.25*@experience
      puts "\nYou delivered #{@experience} papers today."
      if @experience < @quota
        @earnings = @earnings - 2
        puts "\nSorry boy, gonna have to cut two bucks from your pay."
      end
    elsif @experience >= @quota
      @earnings += (0.25*@quota + 0.5*(@experience - @quota))
      puts "\nWow! You delivered #{@experience} papers today!"
    end
    self.quota
    puts "\nBased on your performance, you will need to deliver #{@quota} papers tomorrow."
  end

  def report
    puts "\nI'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
    puts "Tomorrow, I'm gonna have to deliver #{@quota} papers."
  end

end

puts "To begin your new life as a Paperboy, enter 'y'"
init = gets.chomp

until init == 'y'
  puts "I didn't get that."
  puts "To begin a new game, type 'y'"
  init = gets.chomp
end

game = Paperboy.new
puts "\n===================================="
puts "Welcome to your first day, Paperboy!"
puts "===================================="
puts "\nI'm your boss, Yob Rapap. People call me Steve for short."
puts "Now, I don't wanna be calling you Paperboy all time!"
puts "\nTell me, what's your name?"

game.name = gets.chomp

puts "\nNice to meet you, #{game.name}!"
puts "\nNow here are some papers. You're gonna have to deliver at least 50 today."
puts "If you don't, I'm gonna have to cut 2 bucks from your pay."
puts "But there's good news! If you meet your goal, you'll be paid $0.25 per paper."
puts "And even better, If you exceed your goal, you'll be paid $0.50 per additional paper!"
puts "CHA-CHING!!"
puts "Exciting, 'aint it?"
puts "\nWith that said, you're gonna get better at this with every delivery."
puts "So... we're gonna scale your goal up to match your experience level ;)."
puts "(Meaning it's gonna get harder everyday. Hah!)"
puts "\nOkay! Let's start delivering papers..."
puts "** press ENTER to start!"
blah = gets

while true
  puts "\n======="
  puts "NEW DAY"
  puts "======="
  puts "Which street number will you start on?"
  game.start_street = gets.chomp

  puts "Alright! Go deliver those papers!"
  puts "\n-- TIME ELAPSES --"
  puts "\nWelcome back, #{game.name}!"
  puts "Which street number did you end with?"
  game.end_street = gets.chomp

  game.deliver

  puts "\nSee you tomorrow!"
  puts "\n** enter 'go' to proceed"
  puts "** enter 'stop' to quit"
  puts "** enter 'report' to get status"
  input = gets.chomp
  if input == "stop"
    puts "Aw, bye #{game.name}!"
    puts "\nFINAL EARNINGS: #{game.earnings}"
    break
  elsif input == "report"
    game.report
    input = gets.chomp
  end
end
