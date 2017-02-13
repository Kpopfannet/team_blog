class CreateFreeboards < ActiveRecord::Migration
  def change
    create_table :freeboards do |t|
    	t.text :content
      t.timestamps null: false
    end
  end
end
