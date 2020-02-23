require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array


  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |k1, v1|
    puts "#{k1.to_s.capitalize}:"
    v1.each do |k2, v2|
      puts "  #{k2.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{v2.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_BBQ = []
  holiday_hash.each do |k1, v1|
    v1.each do |k2, v2|
      if v2.include?("BBQ")
        holiday_BBQ << k2
      end
    end
  end
  holiday_BBQ

end







