holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
second_supply_for_fourth_of_july(holiday_supplies)

#Write a method that adds a supply to both Winter holidays.
def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |holiday, decorations|
        decorations << supply 
    end
end
add_supply_to_winter_holidays(holiday_supplies, "Sweaters")


#Write method adding a supply memorial day
def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
end
add_supply_to_memorial_day(holiday_supplies, "beach toys")


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end
add_new_holiday_with_supplies(holiday_supplies, :summer, :my_birthday, ["cake", "candles", "pizza"])






def all_winter_holiday_supplies(holiday_hash) #get all winter supplies
    holiday_hash[:winter].values.flatten
end
all_winter_holiday_supplies(holiday_supplies)






def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, celebration|
        puts "#{season.capitalize}:"
        celebration.each do |celebration, item|
            puts "  #{celebration.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
        end
    end
end
all_supplies_in_holidays(holiday_supplies)
#What's going on here...
#for each celebration and item, 
#turn the celebration (like new years for example) into a string, and split it on any underscore
#now new years is an array of 2 strings ["new", "years"]. 
#Now, using map which will make a new array, we say for every index (every word in this case), we capitalize it
#We then turn that back into a string. 
#Then we just add on the item, making sure to join it into a string on a comma 




#Write a method to collect all holidays with "BBQ" in the supply array. The method should behave as seen below:
def all_holidays_with_bbq(holiday_hash)
    holiday_hash.map do |season, celebration|
        celebration.map do |celebration, item|
            if item.include?("BBQ")
                celebration
            end
        end
    end.flatten.compact #compact returns a copy of itself with all nil elements removed. 
    #flatten reduces an array to one dimension. #help! 
end
all_holidays_with_bbq(holiday_supplies)


        