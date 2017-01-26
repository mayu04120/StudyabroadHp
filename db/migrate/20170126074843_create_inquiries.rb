class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :title
      t.string :mail
      t.string :name
      t.text :contents

      t.timestamps
    end
  end
end
