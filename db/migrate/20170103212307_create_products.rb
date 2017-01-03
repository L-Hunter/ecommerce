class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :pname
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
