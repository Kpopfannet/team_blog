class CreateArticles < ActiveRecord::Migration[5.0]
    def change
        create_table :articles do |t|
            t.references :member
            t.references :category
            t.string :template
            t.string :thumbnail
            t.string :title
            t.text :preview
            t.string :photo
            t.text :content
            
            t.timestamps
        end
  end
end
