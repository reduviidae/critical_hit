class AddGenderDataToUserGenders < ActiveRecord::Migration[7.0]
  def change
    add_column :user_genders, :gender_nonconforming, :boolean
    add_column :user_genders, :nonbinary, :boolean
    add_column :user_genders, :trans, :boolean
  end
end
