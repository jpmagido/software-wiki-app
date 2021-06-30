class CreateProcedures < ActiveRecord::Migration[6.1]
  def change
    create_table :procedures do |t|
      t.string :name
      t.text :description
      t.text :actions
      t.belongs_to :interaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
