class Unit
  attr_accessor :health_points, :attack_power
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(unit)
  # unit = Footman.new(@health_points, @attack_power)
    if self.dead? || unit.dead?
      return nil
    end
    unit.damage(attack_power)
  end

  def damage(damage_points)
    @health_points -= damage_points
  end

  def dead?
    # puts @health_points
    if health_points == 0
      true
    end
  end
end