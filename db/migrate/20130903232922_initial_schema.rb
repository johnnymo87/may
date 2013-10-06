class InitialSchema < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.column :login, :string
  		t.column :password, :string
      t.column :name, :string
      t.column :email, :string, default: nil
      t.column :type, :string, default: "Visitor"
    end

    #create_table :articles do |t|
    #  t.integer :user_id
    #  t.column :title, :string, default: "Title"
    #  t.column :body, :text, default: ""
    #  t.timestamps
    #  t.column :keywords, :string, default: nil
    #  t.column :allow_comments, :boolean, default: true
    #end

    create_table :comments do |t|
      t.integer :user_id
      t.column :body, :text
      t.timestamps
    end

    create_table :songs do |t|
      t.column :title, :string
      t.column :description, :text, default: nil
      t.column :copyright, :datetime
      t.column :CCLI, :integer, default: nil
      t.column :scripture, :string, default: nil
      t.column :keywords, :string, default: nil
    end
  end
end
