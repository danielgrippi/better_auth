class CreateRegistrationCodes < ActiveRecord::Migration
  def change
    create_table :registration_codes do |t|
      t.string :token, limit: 30, null: false

      t.timestamps
    end
  end
end
