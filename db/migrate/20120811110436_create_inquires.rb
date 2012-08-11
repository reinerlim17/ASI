class CreateInquires < ActiveRecord::Migration
  def change
    create_table :inquires do |t|
      t.string :name

      t.timestamps
    end
  end
end
