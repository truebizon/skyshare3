class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :sky_id
      t.text :text
      t.timestamps
    end
  end
end
