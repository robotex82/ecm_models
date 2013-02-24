require 'spec_helper'

feature 'Ecm::Models::Person admin' do
  include ActiveAdmin::SignInHelper

  def set_locale
   I18n.locale = :de
  end

  def set_admin_area_path
    @admin_area_path = "/de/admin"
  end

  def set_resource_path
    @resource_path = "personen"
  end

  def set_resource_class
    @resource_class = Ecm::Models::Person
  end

  def set_resource_factory_name
    @resource_factory_name = @resource_class.to_s.underscore.gsub('/', '_').to_sym
  end

  def set_index_check_column
    @index_check_column = :firstname
  end

  def prepare_for_new
    @category = FactoryGirl.create(:ecm_models_category)
    @eye_color = FactoryGirl.create(:ecm_models_eye_color)
    @gender = FactoryGirl.create(:ecm_models_gender)
    @hair_color = FactoryGirl.create(:ecm_models_hair_color)
    @skin_type = FactoryGirl.create(:ecm_models_skin_type)
  end

  def fill_new_form
#    select @category.to_s,   :from => "ecm_models_person[category_id]"
#    select @eye_color.to_s,  :from => "ecm_models_person[eye_color_id]"
#    select @gender.to_s,     :from => "ecm_models_person[gender_id]"
#    select @hair_color.to_s, :from => "ecm_models_person[hair_color_id]"
#    select @skin_type.to_s,  :from => "ecm_models_person[skin_type_id]"
    choose @category.to_s
    choose @eye_color.to_s
    choose @gender.to_s
    choose @hair_color.to_s
    choose @skin_type.to_s
    select 5.years.ago.strftime("%d"),           :from => "ecm_models_person[birthdate(3i)]"
    select I18n.l(5.years.ago, :format => "%B"), :from => "ecm_models_person[birthdate(2i)]"
    select 5.years.ago.strftime("%Y"),           :from => "ecm_models_person[birthdate(1i)]"
    fill_in "ecm_models_person[email]",      :with => "person@example.com"
    fill_in "ecm_models_person[firstname]",  :with => "Jane"
    fill_in "ecm_models_person[identifier]", :with => "0123456789"
  end

  def fill_edit_form
    fill_in "ecm_models_person[firstname]", :with => "Alice"
  end

  background do
    admin_user = FactoryGirl.create(:admin_user)
    sign_in_with(admin_user.email, admin_user.password)

    set_locale
    set_admin_area_path
    set_resource_class
    set_resource_path
    set_resource_factory_name
  end

  describe 'new' do
    background do
      @resource_count = @resource_class.count
      prepare_for_new
      visit "#{@admin_area_path}/#{@resource_path}/new"
    end

    scenario 'should be visitable' do
      page.current_path.should eq("#{@admin_area_path}/#{@resource_path}/new")
    end # scenario

    scenario 'should have the status code 200' do
      page.status_code.should eq(200)
    end # scenario

    describe 'when filling the form correctly' do
      background do
        fill_new_form
        find(:xpath, '//input[@type="submit"]').click
      end

      scenario 'should have created a record' do
        @resource_class.count.should eq(@resource_count + 1)
      end # scenario

      scenario 'should have the status code 200' do
        page.status_code.should eq(200)
      end # scenario
    end # describe 'when filling the form correctly'
  end # describe 'new'

  describe 'show' do
    background do
      @resource = FactoryGirl.create(@resource_factory_name)
      visit "#{@admin_area_path}/#{@resource_path}/#{@resource.to_param}"
    end

    scenario 'should have the status code 200' do
      page.status_code.should eq(200)
    end # scenario
  end # describe 'show'

  describe 'edit' do
    background do
      @resource = FactoryGirl.create(@resource_factory_name)
      visit "#{@admin_area_path}/#{@resource_path}/#{@resource.to_param}/edit"
    end

    scenario 'should be visitable' do
      page.current_path.should eq("#{@admin_area_path}/#{@resource_path}/#{@resource.to_param}/edit")
    end # scenario

    scenario 'should have the status code 200' do
      page.status_code.should eq(200)
    end # scenario

    describe 'when filling the form correctly' do
      background do
        @resource_count = @resource_class.count
        fill_edit_form
        find(:xpath, '//input[@type="submit"]').click
        @resource.reload
      end

      scenario 'should not have created a record' do
        @resource_class.count.should eq(@resource_count)
      end # scenario

      scenario 'should have the status code 200' do
        page.status_code.should eq(200)
      end # scenario

      scenario 'should redirect to the resource show page' do
        page.current_path.should eq("#{@admin_area_path}/#{@resource_path}/#{@resource.to_param}")
      end # scenario
    end # describe 'when filling the form correctly'

  end # describe 'edit'

  describe 'delete' do
    background do
      @resource = FactoryGirl.create(@resource_factory_name)
      @resource_count = @resource_class.count
      visit "#{@admin_area_path}/#{@resource_path}/#{@resource.to_param}"
      find(:xpath, "//a[@href='#{@admin_area_path}/#{@resource_path}/#{@resource.to_param}' and @data-method='delete']").click
    end

    scenario 'should delete the resource' do
      @resource_class.count.should eq(@resource_count - 1)
    end # scenario

    scenario 'should redirect to the resource index page' do
      page.current_path.should eq("#{@admin_area_path}/#{@resource_path}")
    end # scenario
  end # describe 'delete'

  describe 'index' do
    background do
      set_index_check_column
      @resources = FactoryGirl.create_list(@resource_factory_name, 3)
      visit "#{@admin_area_path}/#{@resource_path}"
    end

    scenario 'should be visitable' do
      page.current_path.should eq("#{@admin_area_path}/#{@resource_path}")
    end # scenario

    scenario 'should have the status code 200' do
      page.status_code.should eq(200)
    end # scenario

    scenario "should show the resources" do
      @resources.each do |resource|
        page.body.should include(resource.send(@index_check_column.to_sym))
      end
    end # scenario
  end # describe 'index'
end # feature

