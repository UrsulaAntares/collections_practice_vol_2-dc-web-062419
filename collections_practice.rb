# your code goes here
require 'pry'

def begins_with_r(array)
 i = 0  
 while i < array.length
    if array[i].start_with?("r")
      i+=1
      true
    else
      return false
    end
 end
 true
end


def contain_a(array)
  i=0
  the_a_team = []
  while i < array.length
    if  array[i].include?("a")
      the_a_team << array[i]
    end
    i+=1
  end
  the_a_team
end

def first_wa(array)
  i=0
  wa_wa_trombone =""
  while i < array.length
    if array[i].to_s.start_with?("wa")
      wa_wa_trombone = array[i]
      break if wa_wa_trombone != ""
    end
  i+=1  
  end
  wa_wa_trombone
end


def remove_non_strings(array)
 i=0
 remains_of_the_array = []
 while i < array.length
# binding.pry
  if array[i].class == String
    remains_of_the_array << array[i]
  end
  i+=1
 end
 remains_of_the_array
end

def count_elements(array)
  array
  family_values = []
  do_array_me = []
  array.each do | hash |
    new_hash = {}
    hash.each do | key, value |
 #    binding.pry
      if family_values.include?(value) != true
        family_values << value
        new_hash[:count] = 1
        new_hash[key] = value
        do_array_me << new_hash
      else
 #       binding.pry
        i=0
        while i < do_array_me.length 
          if do_array_me[i][:name] == value
       #     binding.pry
            do_array_me[0][:count] += 1
          end
          i+=1
        end
      end
    end
  end
# I need to return an array of hashes, in each hash anotehr level of hashes; the first sub-hash in each hash is the count of the instances of the second sub-hash's value, 
  do_array_me
#  binding.pry
end




def merge_data(weigh, way)
  family_values = []
#  weigh[0][:first_name] == person
family_values = []
  way.each do |named_hash|
    named_hash.each do | name, data |
    family_values << name  
      data.each do | key, value |
        i=0
        while i < way.length + 1
          if weigh[i][:first_name] == name
  #          binding.pry
            weigh[i][key]=value
          end
          i+=1
#         binding.pry
        end
      end
    end
  end
  weigh
end

def find_cool(argument)
  who = []
  argument.each do |hash|
    hash.each do |key, value|
       if value == "cool" 
         who << hash
       end
 #     binding.pry
    end
  end
#  binding.pry
  who
end


def organize_schools(array)
  binding.pry
end


{"flatiron school bk"=>{:location=>"NYC"},
 "flatiron school"=>{:location=>"NYC"},
 "dev boot camp"=>{:location=>"SF"},
 "dev boot camp chicago"=>{:location=>"Chicago"},
 "general assembly"=>{:location=>"NYC"},
 "Hack Reactor"=>{:location=>"SF"}}

