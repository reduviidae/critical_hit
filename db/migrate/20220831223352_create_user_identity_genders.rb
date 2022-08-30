class CreateUserIdentityGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :user_identity_genders do |t|
      t.references :user_identity
      t.references :gender
      t.boolean :primary

      t.timestamps
    end
  end
end
