ActiveAdmin.register Ecm::Models::HairColor do
  include Ecm::Models::ActiveAdmin::Register::CommonBehaviour

  form do |f|
    f.translate_inputs do |ti|
      f.inputs do
        ti.input :name
      end # f.inputs
    end # f.translate_inputs
    f.actions
  end # form
end

