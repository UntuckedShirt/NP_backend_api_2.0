class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :publisher
      t.string :publish_date
      t.string :console
      t.integer :players
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
