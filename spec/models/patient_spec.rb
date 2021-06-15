require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe 'relationships' do
    it {should have_many(:doctor_patients)}
    it { should have_many(:doctors).through(:doctor_patients) }
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