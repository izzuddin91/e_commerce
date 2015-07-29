class CreateProducts < ActiveRecord::Migration

	def change
		create_table :products do |t|
			t.integer :admin_id
			t.integer :order_id
			t.string :product_name
			t.text :description
			t.integer :quantity
			t.timestamps null: false
		end
	end
end