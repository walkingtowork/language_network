class AddAboutMeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about_me, :text
    add_column :users, :hobbies, :text
    add_column :users, :place_to_visit, :text
  end
end
