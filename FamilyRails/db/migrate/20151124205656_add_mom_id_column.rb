class AddMomIdColumn < ActiveRecord::Migration
  def change
    add_column :children, :mom_id, :string
  end
end
