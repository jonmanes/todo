class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.references :list, index: true
      t.boolean :completed, default: false

      t.timestamps null: false
    end
    add_foreign_key :items, :lists
  end
end
