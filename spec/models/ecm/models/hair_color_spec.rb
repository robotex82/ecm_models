require 'spec_helper'

describe Ecm::Models::HairColor do
  describe 'assoications' do
  end # describe 'assoications'

  describe 'validations' do
    I18n.available_locales.map(&:to_s).sort.each do |locale|
      it { should validate_presence_of "name_#{locale}" }
      it { should validate_uniqueness_of "name_#{locale}" }
    end
  end # describe 'validations'
end
