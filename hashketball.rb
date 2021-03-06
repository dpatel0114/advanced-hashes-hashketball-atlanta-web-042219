# Write your code here!
require 'pry'
def game_hash

game_build = {
  :home =>{
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
"Alan Anderson" =>{number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12,steals: 3, blocks: 1, slam_dunks: 1}, 
"Reggie Evans" =>{number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
"Brook Lopez" =>{number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
"Mason Plumlee" =>{number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
"Jason Terry" =>{number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1},
      
    }
  },
  :away =>{
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
"Jeff Adrien" =>{number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2}, 
"Bismak Biyombo" =>{number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
"DeSagna Diop" =>{number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
"Ben Gordon" =>{number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
"Brendan Haywood"=>{number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12},
      
    }
    
  }
}


end


def num_points_scored(player)
  results=0
  # for  players in game_hash[:home][:players].keys
  # # binding.pry
  # if player == players
  #   results = game_hash[:home][:players][players][:points]
  # end 
  # end
  # results
  
  
  
  for main_key in game_hash.keys
    for inner_key in game_hash[main_key][:players].keys
    # binding.pry
      if inner_key == player
        result = game_hash[main_key][:players][inner_key][:points]
      end
    end
  end

  result
end

def shoe_size(player)
  result = []
  for main_key in game_hash.keys
     for inner_key in game_hash[main_key][:players].keys
    # binding.pry
      if inner_key == player
        result = game_hash[main_key][:players][inner_key][:shoe]
      end
    end
  end
  result
end

def team_colors(team_name)

  for main_key in game_hash.keys
    if team_name == game_hash[main_key][:team_name]
      return game_hash[main_key][:colors]
    end
  end
end




def team_names
  name = []
  for main_key in game_hash.keys
    name << game_hash[main_key][:team_name]
  end
  name
end


def player_numbers(name)
  result = []
  for main_key in game_hash.keys
    if name == game_hash[main_key][:team_name]
      for player_name in game_hash[main_key][:players].keys
      result << game_hash[main_key][:players][player_name][:number]
    end
  end
end
result
end


def player_stats(name)
  
  for main_key in game_hash.keys
   for inner_key in game_hash[main_key][:players].keys
    if inner_key == name
      return game_hash[main_key][:players][inner_key]
    end
   
 end
end
end
  
  
def big_shoe_rebounds
  result = []
  for main_key in game_hash.keys
    result << game_hash[main_key][:players].sort_by {|key,value| value[:shoe]}[-1][1][:rebounds]
end
result.max
end

