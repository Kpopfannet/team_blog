class CreateRolls < ActiveRecord::Migration[5.0]
    def change
        create_table :rolls do |t|
            t.references :member, forign_key: true
            t.string :name, null: false
            t.timestamps
        end
    end
end
