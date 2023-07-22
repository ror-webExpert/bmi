class CreateDiseaseTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :disease_types do |t|
      t.string :name
      t.string :symbol


      t.timestamps
    end
  end
end
