class AddColIndexToShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    add_index :shortened_urls, :short_url, unique: true
    add_column :shortened_urls, :user_id, :integer
  end
end
