class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :price
      t.string :agent
      t.string :country
      t.text :goodpoint
      t.text :badpoint

      t.timestamps
    end
  end
end
