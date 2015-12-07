require_relative '../lib/warrior.rb'

warr_1 = Warrior.new(name="Wojtek", strength=20, defense=10)
warr_2 = Warrior.new(name="Sebastian", strength=1, defense=1)

puts warr_1.short_info
puts warr_2.short_info
damage = 0

if warr_1.hp == 0
  puts "#{warr_1.name} can not fight, he is dead!"
elsif warr_2.hp == 0
  puts "#{warr_2.name} can not fight, he is dead!"
else
  hits = 0
  puts "\nFight between #{warr_1.name} and #{warr_2.name}\n"
  while true
    # warr_1 attacks warr_2
    damage = warr_1.damage(warr_2.defense)
    warr_2.sub_hp(damage)
    puts "#{warr_1.name} hits #{warr_2.name} with #{damage} damage!"
    if warr_2.is_dead?
      puts "#{warr_1.name} won!"
      if warr_1.is_level_up?
        puts "#{warr_1.name} level up!"
        warr_1.exp += 60
        warr_1.compute_exp_next_level
        warr_1.level += 1
      end
      break
    end
    # warr_2 attacks warr_1
    damage = warr_2.damage(warr_1.defense)
    warr_2.sub_hp(damage)
    puts "#{warr_2.name} hits #{warr_1.name} with #{damage} damage!"
    if warr_1.is_dead?
      puts "#{warr_2.name} won!"
      if warr_2.is_level_up?
        puts "#{warr_2.name} level up!"
        warr_2.exp += 60
        warr_2.compute_exp_next_level
        warr_2.level += 1
      end
      break
    end
    if hits > 100
      puts "Draw!"
      break
    else
    end
    hits += 1
  end
end

puts warr_1.short_info
puts warr_2.short_info
