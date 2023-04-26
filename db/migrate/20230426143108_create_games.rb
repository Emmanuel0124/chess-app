class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :result
      t.string :winner
      t.string :image_url

      t.timestamps
    end
  end
end
