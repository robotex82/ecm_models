require 'spec_helper'

describe Ecm::Models::Person do
  describe 'assoications' do
    it { should belong_to :category }
    it { should belong_to :eye_color }
    it { should belong_to :gender }
    it { should belong_to :hair_color }
    it { should belong_to :skin_type }
  end # describe 'assoications'

  describe 'validations' do
    it { should validate_presence_of :birthdate }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :firstname }
    it { should validate_presence_of :identifier }
    it { should validate_uniqueness_of :identifier }

    it { should validate_presence_of :category }
    it { should validate_presence_of :eye_color }
    it { should validate_presence_of :gender }
    it { should validate_presence_of :hair_color }
    it { should validate_presence_of :skin_type }
  end # describe 'validations'
end
