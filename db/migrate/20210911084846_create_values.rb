class CreateValues < ActiveRecord::Migration[6.1]
  def change
    create_table :values do |t|
      t.string :text
      t.text :description
      t.belongs_to :property, index: true

      t.timestamps
    end
  end
end
