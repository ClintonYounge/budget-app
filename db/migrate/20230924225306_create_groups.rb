class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.integer :author_id
      t.string :name
      t.decimal :amount
      t.datetime :created_at

      t.timestamps
    end
  end
end