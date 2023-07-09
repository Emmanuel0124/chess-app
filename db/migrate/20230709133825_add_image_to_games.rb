class AddImageToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :picture, :string
  end
end
