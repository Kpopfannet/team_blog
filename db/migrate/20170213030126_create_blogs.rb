class CreateBlogs < ActiveRecord::Migration[5.0]
	def change
		create_table :blogs do |t|
			t.text :content
			t.string :photo
			t.string :photolist
			t.timestamps
		end
	end
end
