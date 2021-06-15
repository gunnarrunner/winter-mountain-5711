require 'rails_helper'
RSpec.describe 'hospitals show page' do
  before :each do
    @hospital1 = Hospital.create!(name: "General Hospital")
    @hospital2 = Hospital.create!(name: "Swedish")
    @doctor1 = Doctor.create!(name: "Greg", specialty: "General", university: "Yale", hospital_id: @hospital1.id)
    @doctor2 = Doctor.create!(name: "Frank", specialty: "Neurological", university: "Harvard", hospital_id: @hospital2.id)
    @doctor3 = Doctor.create!(name: "George", specialty: "Othopedic", university: "Harvard", hospital_id: @hospital2.id)
    @doctor4 = Doctor.create!(name: "Bobby", specialty: "Cardiac", university: "Brown", hospital_id: @hospital1.id)
    @doctor5 = Doctor.create!(name: "Doug", specialty: "Neurological", university: "Yale", hospital_id: @hospital1.id)
    @doctor6 = Doctor.create!(name: "Zenon", specialty: "Othopedic", university: "Yale", hospital_id: @hospital1.id)
    @patient1 = Patient.create!(name: "Jojo", age: 55)
    @patient2 = Patient.create!(name: "Boone", age: 30)
    @patient3 = Patient.create!(name: "Chase", age: 33)
    @patient4 = Patient.create!(name: "Trejon", age: 26)
    @patient5 = Patient.create!(name: "Gunnar", age: 25)
    @patient6 = Patient.create!(name: "James", age: 60)
    @doctor_patient1 = DoctorPatient.create!(doctor_id: @doctor1.id, patient_id: @patient1.id)
    @doctor_patient2 = DoctorPatient.create!(doctor_id: @doctor1.id, patient_id: @patient2.id)
    @doctor_patient3 = DoctorPatient.create!(doctor_id: @doctor1.id, patient_id: @patient3.id)
    @doctor_patient4 = DoctorPatient.create!(doctor_id: @doctor1.id, patient_id: @patient4.id)
    @doctor_patient5 = DoctorPatient.create!(doctor_id: @doctor1.id, patient_id: @patient5.id)
    @doctor_patient6 = DoctorPatient.create!(doctor_id: @doctor2.id, patient_id: @patient1.id)
    @doctor_patient7 = DoctorPatient.create!(doctor_id: @doctor3.id, patient_id: @patient2.id)
    @doctor_patient8 = DoctorPatient.create!(doctor_id: @doctor3.id, patient_id: @patient3.id)
    @doctor_patient9 = DoctorPatient.create!(doctor_id: @doctor3.id, patient_id: @patient4.id)
    @doctor_patient10 = DoctorPatient.create!(doctor_id: @doctor4.id, patient_id: @patient1.id)
    @doctor_patient11 = DoctorPatient.create!(doctor_id: @doctor4.id, patient_id: @patient6.id)

    visit "/hospitals/#{@hospital1.id}"
  end

  it 'can show the hospitals name as well as the number of doctors with a their unique list of hospitals' do

    save_and_open_page
    expect(current_path).to eq("/hospitals/#{@hospital1.id}")
    expect(page).to have_content(@hospital1.name)
    expect(page).to have_content(@doctor1.university)
    expect(page).to have_content(@doctor4.university)
    expect(page).to_not have_content(@doctor2.university)
  end
end