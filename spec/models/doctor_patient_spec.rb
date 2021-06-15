require 'rails_helper'

RSpec.describe DoctorPatient, type: :model do
  describe 'relationships' do
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end

  before :each do
    
  end

  # describe 'class methods' do
  #  describe '.' do
  #   end
  # end

  # describe 'instance methods' do
  #   describe '#' do
  #   end
  # end
end