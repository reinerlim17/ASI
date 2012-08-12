class AddNatureOfBusinessToInquires < ActiveRecord::Migration
  def change
    add_column :inquires, :nature_of_business_id, :integer
  end
end
