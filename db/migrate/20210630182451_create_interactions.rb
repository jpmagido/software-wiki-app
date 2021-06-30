class CreateInteractions < ActiveRecord::Migration[6.1]
  def change
    create_table :interactions do |t|
      t.integer :name, default: 0
      t.string :title
      t.text :description
      t.references :target, polymorphic: true, null: false
      t.belongs_to :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
