class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :users_id, foreign_key: true
      t.text :content, default: ""
      t.datetime :created_at
    end
  end
end
