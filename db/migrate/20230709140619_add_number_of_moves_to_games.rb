class AddNumberOfMovesToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :number_of_moves, :integer
  end
end
