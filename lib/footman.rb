# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_accessor :attack_power, :health_points
  def initialize(hp, ap)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = hp
    @attack_power = ap
  end

  # def attack!(unit)
  #   # unit = Footman.new(@health_points, @attack_power)
  #   unit.damage(@attack_power)
  # end

  # def damage(damage_points)
  #   @health_points -= damage_points
  # end

end
