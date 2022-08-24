class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :display_name
      t.date :birth_date
      t.string :steam_profile_name
      t.string :password_digest
      t.boolean :trans
      t.boolean :nonbinary
      t.integer :sexuality
      t.text :attracted_to, array: true, default: []
      t.boolean :queers_only

      t.timestamps
    end
  end
end
