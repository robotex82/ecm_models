require 'spec_helper'

module Ecm::Models
  describe EyeColor do
    describe 'associations' do
    end # describe 'associations'

    describe 'validations' do
      I18n.available_locales.map(&:to_s).sort.each do |locale|
        it { should validate_presence_of "name_#{locale}" }
        it { should validate_uniqueness_of "name_#{locale}" }
      end
    end # describe 'validations'

    describe '#to_s' do
      subject { EyeColor.new(:name => 'Foo') }

      its(:to_s) { should eq('Foo') }
    end # describe '#to_s'
  end # describe EyeColor
end # module Ecm::Models

