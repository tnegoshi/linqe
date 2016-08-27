class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :commenter_id
      t.integer :linqe_id

      t.timestamps null: false
    end
  end
end
