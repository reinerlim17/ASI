class AddUserIdToInquires < ActiveRecord::Migration
  def change
    add_column :inquires, :user_id, :integer
  end
end
