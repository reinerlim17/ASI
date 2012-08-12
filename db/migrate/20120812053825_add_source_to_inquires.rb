class AddSourceToInquires < ActiveRecord::Migration
  def change
    add_column :inquires, :source_id, :integer
  end
end
