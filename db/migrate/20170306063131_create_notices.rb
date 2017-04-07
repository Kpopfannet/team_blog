class CreateNotices < ActiveRecord::Migration[5.0]
	def change
		create_table :notices do |t|
			t.integer :x
			t.integer :y
			t.text :content
			t.timestamps
		end
	end
end
