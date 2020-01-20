require 'pry'
def game_hash
{
   :home => {
     :team_name => "Brooklyn Nets",
     :colors => ["Black", "White"],
     :players => [
       {
         :player_name => "Alan Anderson",
         :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1
       },
       {
         :player_name => "Reggie Evans",
         :number => 30,
         :shoe => 14,
         :points => 12,
         :rebounds => 12,
         :assists => 12,
         :steals => 12,
         :blocks => 12, 
         :slam_dunks => 7
       },
       {
         :player_name => "Brook Lopez",
         :number => 11,
         :shoe => 17, 
         :points => 17,
         :rebounds => 19,
         :assists => 10,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 15
       },
       {
         :player_name => "Mason Plumlee",
         :number => 1,
         :shoe => 19,
         :points => 26,
         :rebounds => 11,
         :assists => 6,
         :steals => 3,
         :blocks => 8,
         :slam_dunks => 5
       },
       {
         :player_name => "Jason Terry",
         :number => 31,
         :shoe => 15,
         :points => 19,
         :rebounds => 2,
         :assists => 2,
         :steals => 4,
         :blocks => 11,
         :slam_dunks => 1
       }
       ]
   },
   :away => {
     :team_name => "Charlotte Hornets",
     :colors => ["Turquoise", "Purple"],
     :players => [
       {
         :player_name => "Jeff Adrien",
         :number => 4,
         :shoe => 18,
         :points => 10,
         :rebounds => 1,
         :assists => 1,
         :steals => 2,
         :blocks => 7,
         :slam_dunks => 2
       },
       {
         :player_name => "Bismack Biyombo",
         :number => 0,
         :shoe => 16,
         :points => 12,
         :rebounds => 4,
         :assists => 7,
         :steals => 22,
         :blocks => 15,
         :slam_dunks => 10
       },
       {
         :player_name => "DeSagna Diop",
         :number => 2,
         :shoe => 14,
         :points => 24,
         :rebounds => 12,
         :assists => 12,
         :steals => 4,
         :blocks => 5,
         :slam_dunks => 5
       },
       {
         :player_name => "Ben Gordon",
         :number => 8,
         :shoe => 15,
         :points => 33,
         :rebounds => 3,
         :assists => 2,
         :steals => 1,
         :blocks => 1,
         :slam_dunks => 0
       },
       {
         :player_name => "Kemba Walker",
         :number => 33,
         :shoe => 15, 
         :points => 6,
         :rebounds => 12,
         :assists => 12,
         :steals => 7,
         :blocks => 5,
         :slam_dunks => 12
       }
       ]
   }
 } 
end

def num_point_scored(player_name)
  game_hash.each do |team, hash|
    hash.each do |key, value|
      if key == :players
        value.each do |player_hash|
          if player_hash[:player_name] == players_name
            return player_hash[:points]
          end
        end
      end
    end
  end
end

def shoe_size(players_name)
  game_hash.each do |team,hash|
    hash.each do |key, value|
      if key == :players
        value.each do |player_hash|
          if player_hash[:players_name]== players_name
            return player_hash[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |team, hash|
    hash.each do |key, value|
      if value == team_name
        return hash[:colors]
      end
    end
  end
end

def team_names
  team_names_array = []
  
  game_hash.map do |team,hash|
    team_names_array.push(hash[:team_name])
  end
  team_names_array
end

def player_numbers(team_name)
  jersey_numbers = []
  
  game_hash.each do |team,hash|
    if hash[:team_name] ==team_name
      hash[:players].each.do |player_hash|
        jersey_numbers.push(player_hash[:number])
      end
    end
  end
  jersey_numbers
end

def player_stats(players_name)
  new_hash = {}
  
  game_hash.each do |team, hash|
    hash.each do |key, value|
      if key == :players
        value.each do |player_hash|
          if player_hash[:player_name] == players_name
            player_hash.each do |statistic, number|
              new_hash[statistic] = number
            end  
          end  
        end  
      end  
    end  
  end 
new_hash.delete(:players_name)
new_hash
end


def big_shoe_rebounds
  hash_compare = {}
  
  game_hash.each do |team, hash|
    hash.each do |key, value|
      if key == :players
        value.each do |player_hash|
          hash_compare[player_hash[:players_name]] = players_name[:shoe]
        end
      end
    end
  end
  max_value = 0
  key_for_max_value = nil
  
  hash_compare.each_pair do |key, value|
    if value > max_value
      max_value = value
      key_for_max_value = key
    end
  end
  return player_stats(key_for_max_value)[:rebounds]
end






