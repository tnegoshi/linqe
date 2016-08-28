class AddDescriptionToLinqes < ActiveRecord::Migration
  def change
    add_column :linqes, :description, :text
  end
end
