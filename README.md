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


#Write a method that adds a supply to both Winter holidays.
def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |holiday, decorations|
        decorations << supply 
    end
end
add_supply_to_winter_holidays(holiday_supplies, "Sweaters")