require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do

  let(:phone_number) { PhoneNumber.new(number: 'abcxdefgh', person_id: 1) }

  it 'has a valid test number' do
    expect(phone_number).to be_valid
  end

  context 'when it has to be valid' do
    it 'is not valid without a number' do
      phone_number.number = nil
      expect(phone_number).to_not be_valid
    end

    it 'must have a reference to a person' do
      phone_number.person_id = nil
      expect(phone_number).not_to be_valid
    end
  end


end
