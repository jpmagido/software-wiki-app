class CreateSoftwares < ActiveRecord::Migration[6.1]
  def change
    create_table :softwares do |t|
      t.boolean :online, default: true
      t.string :version, null: false
      t.belongs_to :software_identity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
