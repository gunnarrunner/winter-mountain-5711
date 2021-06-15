require 'rails_helper'

RSpec.describe Hospital do
  describe 'relationships' do
    it { should have_many(:doctors) }
    it { should have_many(:patients).through(:doctors) }
  end

    describe 'instance methods' do
      describe '#can count the number of doctors and give a unique list of the doctors schools at this hospital' do
        it 'can count all the doctors at this hospital' do
          
        end

        it 'can give a unique list of all the doctors schools' do
          
        end
      end
    end
end
