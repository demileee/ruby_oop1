class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i

    if @meal_time < 12
      @ampm = "#{@meal_time} AM"
    elsif @meal_time == 12
      @ampm = "#{@meal_time} PM"
    elsif @meal_time > 12
      @ampm = "#{@meal_time - 12} PM"
    end
  end

  # READERS
  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

  # INSTANCE METHODS

  def eats_at
    puts @ampm
  end

  def meow
    puts "Meow name is #{@name} and I eat #{@preferred_food} at #{@ampm}."
  end
end

coco = Cat.new("Coco", "tuna", "15")
chestnut = Cat.new("Chestnut", "chicken", "10")

coco.meow
chestnut.meow
