class CreateCompetences < ActiveRecord::Migration[5.2]
  def change
    create_table :competences do |t|
      t.string :name
      t.belongs_to :docteur, index: true
      t.belongs_to :specialty, index: true
      
      t.timestamps
    end
  end
end
