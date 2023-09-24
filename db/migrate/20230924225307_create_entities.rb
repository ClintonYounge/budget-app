class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :icon
      t.datetime :created_at

      t.timestamps
    end
  end
end