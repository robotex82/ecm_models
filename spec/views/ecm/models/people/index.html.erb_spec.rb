require 'spec_helper'

describe 'ecm/models/people/index.html.erb' do
  before do
    assign(:people, [
      stub_model(Ecm::Models::Person, :firstname => 'Alice', :age => 20),
      stub_model(Ecm::Models::Person, :firstname => 'Bob', :age => 20)
    ])
    render
  end # before

  it 'displays all the people' do
    rendered.should include('Alice')
    rendered.should include('Bob')
  end # it
end # describe

