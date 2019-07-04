require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  #holiday_hash[:winter][:christmas] << supply
  #holiday_hash[:winter][:new_years] << supply
  
  holiday_hash[:winter].map do |winter_hol, supply_array|
    supply_array << supply 
  end
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
# supply_array = []
#  holiday_hash.each do |season, data|
#     if season == :winter
#       data.each do |holiday, supply|
#         supply_array.concat(supply)
#       end
#     end
#   end
#   supply_array
holiday_hash[:winter].values.flatten





end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
      data.each do |holiday, supply|
        hol = holiday.to_s.split('_')
        hol.each do |name|
          name.capitalize!
        end
        hol = hol.join(" ")
        puts "  #{hol}: #{supply.join(', ')}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  key_array = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supply|
      supply.each do |value|
        if value == "BBQ"
        key_array << holiday_hash[season].keys
        end
      end
    end
  end
  key_array.flatten
end







