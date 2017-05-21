require 'rails_helper'

RSpec.describe Contact, type: :model do
  it 'is valid with valid attributes' do
    expect(Contact.new(FactoryGirl.attributes_for(:contact))).to be_valid
  end
  it 'is not valid without a email' do
    expect(Contact.new(FactoryGirl.attributes_for(:contact_invalid))).to_not be_valid
  end
end
