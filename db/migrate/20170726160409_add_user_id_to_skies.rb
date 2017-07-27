class AddUserIdToSkies < ActiveRecord::Migration
  def change
    add_column :skies, :user_id, :integer
  end
end
