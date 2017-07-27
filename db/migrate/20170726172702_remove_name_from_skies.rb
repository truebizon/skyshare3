class RemoveNameFromSkies < ActiveRecord::Migration
  def change
    remove_column :skies, :name, :string
  end
end
