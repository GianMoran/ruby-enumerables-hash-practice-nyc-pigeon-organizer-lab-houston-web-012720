require 'pry'
def nyc_pigeon_organizer(data)

pigeon_list = {}

data.each do |keys,values| 
  binding.pry
  values.each do |attributes,names|
    binding.pry
    names.each do |name|
      if pigeon_list[name] == nil
        pigeon_list[name] = {}
        binding.pry
      end
      if pigeon_list[name][keys] == nil 
        pigeon_list[name][keys] = [attributes.to_s]
      else
        pigeon_list[name][keys] << attributes.to_s
      end
    end
  end
end
pigeon_list
end 