class Warrior
	attr_reader		:name
	attr_accessor	:hp
	attr_accessor	:hp_max
	attr_accessor	:strength
	attr_accessor	:defense
	attr_accessor	:level
	attr_accessor	:exp
	attr_accessor	:exp_next_level
	attr_accessor :gold

	def initialize(name="Antek")
		@gold = 0
		@name = name
		@hp_max = 100
		@hp = @hp_max
		@strength = 5
		@defense = 5
		@level = 5
		@exp = 0
		@exp_next_level = 50
	end

	def add_hp(points=0)
		if (@hp + points) > @hp_max
			@hp = @hp_max
		else
			@hp += points
		end
	end

	def sub_hp(points=0)
		if(@hp - points > 0)
			@hp -= points
		else
			@hp = 0
		end
	end

	def add_strength(strength=0)
		@strength += strength
	end

	def add_defense(defense=0)
		@defense += defense
	end

	def level_up
		@level += 1
	end

	def add_exp(exp=0)
		@exp += exp
	end

	def compute_exp_next_level
			@exp_next_level *= 2
	end

	def add_gold(gold=0)
		@gold += gold
	end

	def sub_gold(gold=0)
		if @gold - gold < 0
			@gold = 0
		else
			@gold -= gold
		end
	end
end
