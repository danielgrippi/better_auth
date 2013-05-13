class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :email, null: false
      t.string :token, limit: 30, null: false

      t.timestamps
    end
  end
end
