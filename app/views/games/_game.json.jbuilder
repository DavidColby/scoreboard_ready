json.extract! game, :id, :home_team, :away_team, :home_team_score, :away_team_score, :created_at, :updated_at
json.url game_url(game, format: :json)
