class AddBlackPlayerToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :black_player, :string
  end
end
