require 'spec_helper'

module Ecm::Models
  describe PeopleController do
    describe 'GET index' do
       it 'should have a 200 status code' do
        get :index
        response.code.should eq('200')
      end # it

      describe 'with existing, visible people' do
        before do
          @people = FactoryGirl.create_list(:ecm_models_person, 3, :visible => true)
        end # before
        it 'should assign people to @people' do
          get :index
          assigns(:people).should eq(@people)
        end # it
      end # describe 'with existing, visible people'
    end # describe 'GET index'
  end # describe PeopleController
end # module Ecm::Models

