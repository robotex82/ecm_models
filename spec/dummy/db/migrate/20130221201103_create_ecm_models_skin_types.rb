class CreateEcmModelsSkinTypes < ActiveRecord::Migration
  def change
    create_table :ecm_models_skin_types do |t|
      t.translate_columns do |tc|
        tc.string :name
      end

      t.timestamps
    end
  end
end
