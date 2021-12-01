class CreateConducts < ActiveRecord::Migration[5.2]
  def change
    create_table :conducts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
