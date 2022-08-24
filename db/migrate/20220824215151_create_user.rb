class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.string :phone
      t.string :display_name, null: false
      t.date :birth_date, null: false
      t.string :steam_profile_name
      t.string :password_digest, null: false
      t.boolean :trans, null: false
      t.boolean :nonbinary, null: false
      t.integer :sexuality
      t.text :attracted_to, array: true, default: []
      t.boolean :queers_only

      t.timestamps
    end
  end
end
