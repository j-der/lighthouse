# require_relative 'footman'
class Barracks

attr_accessor :gold, :food

	def initialize(gold = 1000, food = 80)
		@gold = gold
		@food = food
	end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      footman = Footman.new
    else
      nil
    end
  end

  def can_train_footman?
    if gold >= 135 && food >=2
      return true
    else
      return false
    end
  end


  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      peasant = Peasant.new
    else
      nil
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      true
    else
      nil
    end
  end

end

