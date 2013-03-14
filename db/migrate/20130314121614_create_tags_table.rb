class CreateTagsTable < ActiveRecord::Migration
   def change
    create_table :tags do |c|
      c.string :name
      c.timestamps
    end
  end
end
