class CreateOrders < ActiveRecord::Migration
	def change
		create_table :orders do |t|
			t.string :name
			t.string :email_address
			t.integer :product_id
			t.string :address
			t.string :phone_number
			t.timestamps null: false
		end
	end
end
