class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |c|
      c.string :title
      c.text :body
      c.timestamps
    end
  end
end
