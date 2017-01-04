class CreateWishlistsProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlists_products do |t|
      t.integer :wishlist_id
      t.integer :product_id

      t.timestamps
    end
  end
end
