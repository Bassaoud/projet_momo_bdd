class CreateDocteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :docteurs do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.belongs_to :city

      t.timestamps
    end
  end
end
