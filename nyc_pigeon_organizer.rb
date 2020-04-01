def nyc_pigeon_organizer(data)
# write your code here!

  new_hash = {}
 
  data.collect do |key, value|
    
    value.collect do |color_key, name_array|

      name_array.collect do |pigeon_name|
        
        if !new_hash[pigeon_name]
          new_hash[pigeon_name] = {}
        end

        if !new_hash[pigeon_name][key]
          new_hash[pigeon_name][key] = []
        end
        
        new_hash[pigeon_name][key] << color_key.to_s

    # "Theo" => {:color => []}
    # << name_key.to_s
    # binding.pry
    
      end
  
    end
  
  end
  
  new_hash
end
