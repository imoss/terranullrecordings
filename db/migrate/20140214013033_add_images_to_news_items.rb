class AddImagesToNewsItems < ActiveRecord::Migration
  def change
    add_column :news_items, :featured_image, :string
  end
end
