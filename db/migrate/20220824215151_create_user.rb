class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :attracted_to, array: true, default: []
      t.date :birth_date, null: false
      t.string :display_name, null: false
      t.string :email, null: false
      t.string :first_name
      t.boolean :gender_nonconforming
      t.string :last_name
      t.boolean :nonbinary, null: false
      t.string :password_digest, null: false
      t.string :phone
      t.boolean :queers_only
      t.integer :sexuality
      t.string :steam_profile_name
      t.boolean :t4t_only
      t.boolean :trans, null: false

      t.timestamps
    end
  end
end
