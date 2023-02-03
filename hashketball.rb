require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(name)
  game_hash[:home][:players].find{|player| 
    if player[:player_name] == name then
      return player[:points]
    end
  }

  game_hash[:away][:players].find{|player| 
    if player[:player_name] == name then
      return player[:points]
    end
  }
end

def shoe_size(name)
  game_hash[:home][:players].find{|player| 
    if player[:player_name] == name then
      return player[:shoe]
    end
  }

  game_hash[:away][:players].find{|player| 
    if player[:player_name] == name then
      return player[:shoe]
    end
  }
end

def team_colors(name)
  game_hash[:home].find{|team|
    if team[1] == name then
      return game_hash[:home][:colors]
    end
  }

  game_hash[:away].find{|team|
    if team[1] == name then
      return game_hash[:away][:colors]
    end
  }
end

def team_names
teams = []

teams << game_hash[:home][:team_name]

teams << game_hash[:away][:team_name]

teams

end

def player_numbers(name)
  jersey_numbers = []

  game_hash.find{|team| 
    if team[1][:team_name] == name then
      team[1][:players].each{|player| 
        jersey_numbers << player[:number]
      }
    end
  }
  jersey_numbers
end

def player_stats(name)

  game_hash[:home][:players].find{|player| 
    if player[:player_name] == name then
      return player
    end
  }

  game_hash[:away][:players].find{|player| 
    if player[:player_name] == name then
      return player
    end
  }

end

def big_shoe_rebounds
  #Look at list of players of both teams
  #Find maximum of that list
  #Find player with that shoe size
  #return that player's rebounds

  shoes = []

  game_hash[:home][:players].map {|player|
    shoes << player[:shoe]
  }

  game_hash[:away][:players].map {|player|
    shoes << player[:shoe]
  }

  max_value = shoes.max

  game_hash[:home][:players].find{|player|
    if player[:shoe] == max_value then
      return player[:rebounds]
    end
  }

  game_hash[:away][:players].find{|player|
    if player[:shoe] == max_value then
      return player[:rebounds]
    end
  }

end