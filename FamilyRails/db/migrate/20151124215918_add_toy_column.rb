class AddToyColumn < ActiveRecord::Migration
  def change
    add_column :toys, :child_id, :integer
  end
end
