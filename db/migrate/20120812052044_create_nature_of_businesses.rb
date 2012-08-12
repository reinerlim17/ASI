class CreateNatureOfBusinesses < ActiveRecord::Migration
  def change
    create_table :nature_of_businesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
