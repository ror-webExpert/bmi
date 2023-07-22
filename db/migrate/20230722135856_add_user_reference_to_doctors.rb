class AddUserReferenceToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :disease_type, null: false, foreign_key: true
  end
end
