class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.text :content
      t.integer :user_id
      t.string :type

      t.timestamps
    end
  end
end
