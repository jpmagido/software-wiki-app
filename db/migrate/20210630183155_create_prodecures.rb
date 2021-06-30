class CreateProdecures < ActiveRecord::Migration[6.1]
  def change
    create_table :prodecures do |t|
      t.string :name
      t.text :description
      t.text :actions
      t.belongs_to :interaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
