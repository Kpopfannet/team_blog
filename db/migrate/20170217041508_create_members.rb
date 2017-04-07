class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name,           null: false, default: "어나니머스"
      t.string :subname
      t.string :img
      t.text :desc
      t.string :favorite
      t.string :hate
      t.string :wannabe
      t.datetime :birthday
      t.datetime :join,         null: false, default: DateTime.now.to_date

      t.timestamps
    end
  end
end
