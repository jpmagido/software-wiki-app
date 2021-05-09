class CreateConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :concepts do |t|
      t.string :name
      t.string :short_text
      t.text :description

      t.timestamps
    end
  end
end
