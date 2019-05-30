class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
     t.string "name"
    t.string "email"
    t.string "street_address"
    t.string "zipcode"
    t.string "state"
    t.string "city"
    t.string "password_digest"
    t.string "remember_digest"
    t.timestamps
    end
  end
end
