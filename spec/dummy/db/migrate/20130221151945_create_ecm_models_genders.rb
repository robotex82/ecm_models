class CreateEcmModelsGenders < ActiveRecord::Migration
  def change
    create_table :ecm_models_genders do |t|
      t.translate_columns do |tc|
        tc.string :name
      end

      t.timestamps
    end
  end
end
