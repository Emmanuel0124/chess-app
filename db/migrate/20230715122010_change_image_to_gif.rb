class ChangeImageToGif < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :image_url, :gif_url
  end
end
