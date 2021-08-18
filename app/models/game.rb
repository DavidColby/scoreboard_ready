class Game < ApplicationRecord
  after_update_commit do
    broadcast_changes
  end

  def broadcast_changes
    update_score(team: 'home') if saved_change_to_home_team_score? 
    update_score(team: 'away') if saved_change_to_away_team_score?
  end

  def update_score(team:)
    cable_ready[GameChannel].outer_html(
      selector: "##{team}_score",
      html: render(partial: 'games/score', locals: { score: send("#{team}_team_score"), team: team })
    ).broadcast_to(self)
  end
end
