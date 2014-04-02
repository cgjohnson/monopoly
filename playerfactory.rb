require_relative 'player'

class PlayerFactory
  def build(player)
    player = Player.new(player)
  end
end
