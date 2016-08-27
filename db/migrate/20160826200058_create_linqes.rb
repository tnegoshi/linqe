class CreateLinqes < ActiveRecord::Migration
  def change
    create_table :linqes do |t|
      t.string :title
      t.string :url
      t.string :slug
      t.integer :submitter_id

      t.timestamps null: false
    end
  end
end
