class RemoveGenderDataFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :gender_nonconforming, :boolean
    remove_column :users, :nonbinary, :boolean
    remove_column :users, :trans, :boolean
  end
end
