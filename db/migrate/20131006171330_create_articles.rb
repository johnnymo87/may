class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.text :body
      t.string :keywords
      t.boolean :allow_comments
      t.attachment :photo

      t.timestamps
    end
  end
end
