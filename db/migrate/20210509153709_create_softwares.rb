class CreateSoftwares < ActiveRecord::Migration[6.1]
  def change
    create_table :softwares do |t|
      t.string :name
      t.text :description
      t.boolean :online, default: true

      t.timestamps
    end
  end
end
