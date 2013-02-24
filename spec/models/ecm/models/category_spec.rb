require 'spec_helper'

module Ecm::Models
  describe Category do
    describe 'assoications' do
    end # describe 'assoications'

    describe 'validations' do
      I18n.available_locales.map(&:to_s).sort.each do |locale|
        it { should validate_presence_of "name_#{locale}" }
        it { should validate_uniqueness_of "name_#{locale}" }
      end
    end # describe 'validations'

    describe '#to_s' do
      subject { Category.new(:name => 'Foo') }

      its(:to_s) { should eq('Foo') }
    end # describe '#to_s'
  end # describe Category
end # module Ecm::Models
