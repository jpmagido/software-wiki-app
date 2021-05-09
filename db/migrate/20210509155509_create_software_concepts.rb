class CreateSoftwareConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :software_concepts do |t|
      t.belongs_to :concept, null: false, foreign_key: true
      t.belongs_to :software, null: false, foreign_key: true

      t.timestamps
    end
  end
end
