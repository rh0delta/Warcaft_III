class Barracks
  attr_accessor :food, :gold, :lumber
  attr_reader :health_points
  def initialize(food, gold, hp, lumber)
    @food = food
    @gold = gold
    @health_points = hp
    @lumber = lumber
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

  def damage(unit)
    if unit.class == Footman
      @health_points -= (unit.attack_power / 2).ceil
    elsif unit.class == SeigeEngine
      @health_points -= (unit.attack_power * 2).ceil
    else
      @health_points -= unit.attack_power
    end
  end

  def can_train_seige_engine?
    if food < 3 || gold < 200 || lumber < 60
      false
    else
      true
    end
  end

  def train_seige_engine
    if can_train_seige_engine?
      @food -= 3
      @gold -= 200
      @lumber -= 60
      SeigeEngine.new(400, 50)
    else 
      nil
    end
  end

end
