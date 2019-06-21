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
  do_array_me = []
  array.each do | hash |
    new_hash = {}
    hash.each do | key, value |
#      binding.pry
      new_hash[value] = 1
      do_array_me << new_hash
#      binding.pry
    end
  end
# I need to return an array of hashes, in each hash anotehr level of hashes; the first sub-hash in each hash is the count of the instances of the second sub-hash's value, 
  do_array_me
#  binding.pry
end




def merge_data(weigh, way)
  family_values = []
#  weigh[0][:first_name] == person
    way.each do |headed_data|
      headed_data.each do |person, stats|
        i=0
        while i < way.length
          way[i][weigh[0][:first_name]].each do |key, value|
  #          binding.pry
            if person == weigh[i][:first_name]
              weigh[i][key] = value
  #            binding.pry
                i+=1
              else
                i+=1
            end

          end

        end
      end
    end
  weigh
  #expect [{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson", :motto=>"Have a koala...:first_name=>"ashley", :height=>60, :last_name=>"dubs", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
end


[{:first_name=>"blake", :motto=>"Have a koala-ty day!"},
 {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
 
 [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
  "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]