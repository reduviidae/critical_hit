class RemoveGenderReferenceFromUserGenders < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_genders, :gender_id, :references
  end
end
