require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:jopie) { Person.create(first_name: 'Jopie', last_name: 'ter Heul') }
  let(:phone_number) { PhoneNumber.new(number: 'abcxdefgh', person_id: jopie.id) }

  # Note to self: None of these test are precooked by scaffolding. See Paper on Testing
  it 'has a valid test number' do
    expect(phone_number).to be_valid
  end

  context 'with invalid attributes' do
    it 'is not valid without a number' do
      phone_number.number = nil
      expect(phone_number).to_not be_valid
    end

    it 'must have a reference to a person' do
      phone_number.person_id = nil
      expect(phone_number).not_to be_valid
    end

    it 'is associated with a person' do
      expect(phone_number).to respond_to(:person)
    end
  end
end
