class SeigeEngine < Unit
  attr_accessor :health_points, :attack_power
  def initialize(health, attack)
    @health_points = health
    @attack_power = attack
  end

end