class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.string :name
      t.string :description
      t.references :obj_1, polymorphic: true, null: false
      t.references :obj_2, polymorphic: true, null: false

      t.timestamps
    end
  end
end
