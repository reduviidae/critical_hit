class CreateUserGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :user_genders do |t|
      t.references :gender
      t.boolean :primary
      t.references :user

      t.timestamps
    end
  end
end
