class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :list
      t.string :description

      t.timestamps null: false
    end
  end
end
