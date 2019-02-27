def get_first_name_of_season_winner(data, season)
winner = ""

  data.collect do |time, stats|
# puts " I NEED THIS TO BE TRUE #{season === time}"
    if season == time

      stats.collect do |i|
      i.collect do |a, b|

      if b == "Winner"
      winner = i.values[0].split(" ")
      puts winner[0]
      end
      end
      end
    end
  end
return winner[0]
end



  def get_contestant_name(data, job)
lady = ""

  data.collect do |time, stats|

      stats.collect do |i|
      i.collect do |a, b|
      
      if b == job
      puts "#{b} BBBBB"
      lady = i.values[0]
  
      # end
      end
      end
     end
  end
lady
end


def count_contestants_by_hometown(data, town)
count = 0

  data.collect do |time, stats|

      stats.collect do |i|
      i.collect do |a, b|
      
      if b == town
      count += 1
  
      # end
      end
      end
     end
  end
count
end

def get_occupation(data, town)
  lady_names = []

  data.collect do |time, stats|
      stats.collect do |i|
      i.collect do |a, b|
      
      if b == town
      lady_names << i.values[3]
      
      end
      end
      end
     end
     lady_names[0]
  end
  

def get_average_age_for_season(data, season)
ages = []
average = ""
  data.collect do |time, stats|

    if season == time
      stats.collect do |i|
     
    ages << i.values[1].to_i
    # puts "#{ages.length} <LENGTH #{ages} <ARRAY #{ages.reduce(0, :+) } << reduced "
    average = ages.reduce(0, :+) / ages.length
    end
    end
  end
  average.ceil
end