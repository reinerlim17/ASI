class Inquire < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :company_name,  :interest, :house_number, :street, :barangay, :town,
   :province, :condo, :primary_contact_person, :primary_contact_number, :primary_fax_number, :primary_email, 
   :secondary_contact_person, :secondary_contact_number, 
   :secondary_fax_number, :secondary_email
=======
  attr_accessible :company_name, :nature_of_business_id, :source_id
>>>>>>> f996cb2f0b282260d40241d79575b39ef7cbde45
  belongs_to :user
  has_many :nature_of_businesses
  has_many :sources
end
