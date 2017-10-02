class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.integer :season
      t.integer :episode
      t.string :title
      t.references :user, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
