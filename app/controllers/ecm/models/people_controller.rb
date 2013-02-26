class Ecm::Models::PeopleController < ApplicationController
  def index
    @people = Ecm::Models::PersonDecorator.decorate_collection(Ecm::Models::Person.visible.all)
  end # def index
end # class Ecm::Models::PeopleController < ApplicationController
