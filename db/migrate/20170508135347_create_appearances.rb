class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.integer :episode_id
      t.integer :guest_id
    end
  end
end
