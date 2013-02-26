require 'spec_helper'

module Ecm::Models
  describe 'Ecm::Models::Person routing' do
    describe 'index' do
      it 'should route' do
        { :get => '/de/models' }.
          should route_to(
            :controller => 'ecm/models/people',
            :action => 'index'
          )
      end # it
    end # describe 'index'
  end # describe 'Ecm::Models::Person routing'
end # module Ecm::Models

