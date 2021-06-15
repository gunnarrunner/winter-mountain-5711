require 'rails_helper'
RSpec.describe 'doctors show page' do
  before :each do
    @hospital1 = Hospital.create!(name: "Genrral Hospital")
    @hospital2 = Hospital.create!(name: "Swedish")
    @doctor1 = Doctor.create!(name: "Greg", specialty: "General", university: "Yale", hospital_id: @hospital1)
    @doctor2 = Doctor.create!(name: "Frank", specialty: "Neurological", university: "Harvard", hospital_id: @hospital2)
    @doctor3 = Doctor.create!(name: "George", specialty: "Othopedic", university: "Harvard", hospital_id: @hospital2)
    @doctor4 = Doctor.create!(name: "Bobby", specialty: "Cardiac", university: "Brown", hospital_id: @hospital1)
    @patient1 = Patient.create!(name: "Jojo", age: 55)
    @patient2 = Patient.create!(name: "Boone", age: 30)
    @patient3 = Patient.create!(name: "Chase", age: 33)
    @patient4 = Patient.create!(name: "Trejon", age: 26)
    @patient5 = Patient.create!(name: "Gunnar", age: 25)
    @patient6 = Patient.create!(name: "James", age: 60)
    @doctor_patient1 = DoctorPatient.create!(doctor_id: @doctor1, patient_id: @patient1)
    @doctor_patient2 = DoctorPatient.create!(doctor_id: @doctor1, patient_id: @patient2)
    @doctor_patient3 = DoctorPatient.create!(doctor_id: @doctor1, patient_id: @patient3)
    @doctor_patient4 = DoctorPatient.create!(doctor_id: @doctor1, patient_id: @patient4)
    @doctor_patient5 = DoctorPatient.create!(doctor_id: @doctor1, patient_id: @patient5)
    @doctor_patient6 = DoctorPatient.create!(doctor_id: @doctor2, patient_id: @patient1)
    @doctor_patient7 = DoctorPatient.create!(doctor_id: @doctor3, patient_id: @patient2)
    @doctor_patient8 = DoctorPatient.create!(doctor_id: @doctor3, patient_id: @patient3)
    @doctor_patient9 = DoctorPatient.create!(doctor_id: @doctor3, patient_id: @patient4)
    @doctor_patient10 = DoctorPatient.create!(doctor_id: @doctor4, patient_id: @patient1)
    @doctor_patient11 = DoctorPatient.create!(doctor_id: @doctor4, patient_id: @patient6)

    visit "/doctors/#{@doctor1.id}"
  end

  it 'can show all the information about that specific dr such as name, specialty and the where they graduated' do

    
    expect(current_path).to eq("/doctors/#{@doctor1.id}")
    expect(page).to have_content(@doctor1.name)
    expect(page).to have_content(@doctor1.organic)
    expect(page).to have_content(@.name)
    expect(page).to have_content(@.name)

  end

  it 'can show the name of the hospital where the specific dr works at as well as all the patients associated with this specific dr' do

    
    expect(page).to have_content(@garden1.name)
    expect(page).to have_content(@garden1.organic)
    expect(page).to have_content(@plant3.name)
    expect(page).to have_content(@plant4.name)
    expect(page).to_not have_content(@plant5.name)
  end
end