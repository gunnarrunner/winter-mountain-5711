class Hospital < ApplicationRecord
  has_many :doctors
  has_many :patients, through: :doctors


  def doctor_count
    doctors.count
  end

  def unique_list_of_schools
    doctors.select('distinct(university)')
  end
end
