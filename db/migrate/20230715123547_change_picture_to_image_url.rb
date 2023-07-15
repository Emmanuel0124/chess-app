class ChangePictureToImageUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :picture, :image_url
  end
end
