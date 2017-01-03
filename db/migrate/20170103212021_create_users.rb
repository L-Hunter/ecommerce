class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.string :ccnum
      t.string :cctype
      t.string :street
      t.string :city

      t.timestamps
    end
  end
end
