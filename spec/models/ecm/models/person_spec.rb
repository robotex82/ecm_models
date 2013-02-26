require 'spec_helper'

module Ecm::Models
  describe Person do
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

    describe '#age' do
      subject { Person.new(:birthdate => 20.years.ago - 1.day) }

      it 'should respond' do
        subject.should respond_to(:age)
      end # it

      it 'should return an integer' do   
        subject.age.should be_a(Integer)
      end # it

      it 'should calculate the correct age' do
        subject.age.should eq(20)
      end # it
    end # describe '#age'

    describe 'self#visible' do
      it 'should respond' do
        Ecm::Models::Person.should respond_to(:visible)
      end # it

      it 'should return an ActiveRecord::Relation' do
        Ecm::Models::Person.visible.should be_a(ActiveRecord::Relation)
      end # it

      it 'should not return invisible people' do
        FactoryGirl.create(:ecm_models_person, :visible => false)
        Ecm::Models::Person.visible.count.should eq(0)
      end # it

      it 'should return visible people' do
        FactoryGirl.create(:ecm_models_person, :visible => true)
        Ecm::Models::Person.visible.count.should eq(1)
      end # it
    end # describe 'self#visible'
  end # describe Person
end # module Ecm::Models
