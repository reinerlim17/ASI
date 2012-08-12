class AddInquiresFieldsToInquires < ActiveRecord::Migration
  def change
    add_column :inquires, :house_number, :string
    add_column :inquires, :street, :string
    add_column :inquires, :barangay, :string
    add_column :inquires, :town, :string
    add_column :inquires, :province, :string
    add_column :inquires, :condo, :string
    add_column :inquires, :primary_contact_person, :string
    add_column :inquires, :primary_contact_number, :string
    add_column :inquires, :primary_fax_number, :string
    add_column :inquires, :primary_email, :string
    add_column :inquires, :secondary_contact_person, :string
    add_column :inquires, :secondary_contact_number, :string
    add_column :inquires, :secondary_fax_number, :string
    add_column :inquires, :secondary_email, :string
    add_column :inquires, :interest, :string
  end
end
