class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title
      t.integer :age
      t.text :contents
      t.string :place
      t.integer :price
      t.string :country
      t.integer :season
      t.string :image

      t.timestamps
    end
  end
end
