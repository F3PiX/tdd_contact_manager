require 'rails_helper'

RSpec.describe Person, type: :model do

  let(:person) do
    Person.new(first_name: 'Johan', last_name: 'Cruyff')
  end

  it 'has a valid test person' do
    expect(person).to be_valid
  end

  it 'is invalid without a first name' do
    person.first_name = nil
    expect(person).not_to be_valid
  end

# and what I can think of
   it 'is invalid without a last name ' do
     person.last_name = nil
     expect(person).not_to be_valid
   end

  # I don't need this test, because the shared person is a valid instance
  # it 'is valid with a first  and a last name' do
  #   # skip
  #   person = Person.new(first_name: 'Mini', last_name: 'Verstappen')
  #   expect(person).to be_valid
  # end







  end
