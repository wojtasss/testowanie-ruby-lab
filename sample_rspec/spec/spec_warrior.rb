require_relative '../warrior.rb'
require 'spec_helper.rb'

describe "#new" do

	before :each do
		@warrior = Warrior.new
	end

	context "with name parametr" do
		it "name equal name parametr" do
			@warrior = Warrior.new "Arkok"
			@warrior.name.should == "Arkok"
		end
	end

	context "without name parametr" do
		it "name equal defualt name Antek" do
			@warrior = Warrior.new
			@warrior.name.should == "Antek"
		end
	end
end

describe "#add_hp" do

	before :each do
		@warrior = Warrior.new
		@warrior.hp = 90
	end

	context "addition points plus hp is lesser than hp_max" do
		it "hp starts with 90 and after adding 5 hp is 95" do
			@warrior.add_hp 5
			@warrior.hp.should == 95
		end
	end

	context "addition points plus hp is greater than hp_max" do
		it "hp starts with 90 and hp_max is 100, after adding 15 hp is equal hp_max" do
			@warrior.add_hp 15
			@warrior.hp.should == @warrior.hp_max
		end
	end
end

describe "#sub_hp" do

	before :each do
		@warrior = Warrior.new
		@warrior.hp = 90
	end

	context "substraction points and hp give value lesser than 0" do
		it "hp starts with 90 and after substract 100 is 0" do
			@warrior.sub_hp 100
			@warrior.hp.should == 0
		end
	end

	context "substraction points and hp give value greater than 0" do
		it "hp starts with 90 and after substract 20 is 70" do
			@warrior.sub_hp 20
			@warrior.hp.should == 70
		end
	end
end

describe "#add_strength" do
	context "adding strength points" do
		it "strength starts with 5 after adding 5 is 10" do
			@warrior = Warrior.new
			@warrior.strength = 5
			@warrior.add_strength 5
			@warrior.strength.should == 10
		end
	end
end

describe "#add_defense" do
	context "adding defense points" do
		it "defense starts with 5 after adding 5 is 10" do
			@warrior = Warrior.new
			@warrior.defense = 5
			@warrior.add_defense 5
			@warrior.defense.should == 10
		end
	end
end

describe "#level_up" do
	context "player level up" do
		it "level starts with 1 after exp overstep exp_next_level is 2" do
			@warrior = Warrior.new
			@warrior.level = 1
			@warrior.level_up
			@warrior.level.should == 2
		end
	end
end

describe "#add_exp" do
	context "increase exp about poperly value" do
		it "exp starts with 10 after add 5 is 15" do
			@warrior = Warrior.new
			@warrior.exp = 10
			@warrior.add_exp 5
			@warrior.exp.should == 15
		end
	end
end

describe "#compute_exp_next_level" do
	context "compute next level up point" do
		it "exp_next_level starts with 50 after compute is 100" do
			@warrior = Warrior.new
			@warrior.exp_next_level = 50
			@warrior.compute_exp_next_level
			@warrior.exp_next_level.should == 100
		end
	end
end

describe "#add_gold" do
	context "increse gold about propely value" do
		it "gold starts with 100 after add 50 is 150" do
			@warrior = Warrior.new
			@warrior.gold = 100
			@warrior.add_gold 50
			@warrior.gold.should == 150
		end
	end
end

describe "#sub_gold" do
	context "substraction gold about propely value" do
		it "gold starts with 100 after substract 50 is 50" do
			@warrior = Warrior.new
			@warrior.gold = 100
			@warrior.sub_gold 50
			@warrior.gold.should == 50
		end
	end
end
