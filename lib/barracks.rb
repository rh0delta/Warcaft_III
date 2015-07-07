class Barracks
  attr_accessor :food, :gold
  def initialize(food, gold)
    @food = food
    @gold = gold
  end

  def can_train_footman?
    if food < 2 || gold < 135
      false
    else
      true
    end
  end

  def train_footman
    if can_train_footman?
      @food -= 2
      @gold -= 135
      Footman.new(60, 10)
    else
      nil
    end
  end

  def can_train_peasant?
    if food < 5 || gold < 90
      false
    else
      true
    end
  end

  def train_peasant
    if can_train_peasant?
      @food -= 5
      @gold -= 90
      Peasant.new(35,0)
    else
      nil
    end
  end

end
