class CreateVersionConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :version_concepts do |t|
      t.belongs_to :version, null: false, foreign_key: true
      t.belongs_to :concept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
