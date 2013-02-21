class CreateEcmModelsEyeColors < ActiveRecord::Migration
  def change
    create_table :ecm_models_eye_colors do |t|
      I18n.available_locales.map(&:to_s).sort.each do |locale|
        t.string "name_#{locale}".to_sym
      end

      t.timestamps
    end
  end
end

