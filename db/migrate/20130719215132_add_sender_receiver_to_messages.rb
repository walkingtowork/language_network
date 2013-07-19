class AddSenderReceiverToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :sender_id, :integer
    add_column :messages, :receiver_id, :integer
    remove_column :discussions, :user_id
  end
end
