# A UserIdentities table will hold data concerning not just gender
# but sexuality, and later other details as well. Changing the table 
# name allows me to create a UserIdentityGenders table rather than
# a UserGenderGenders table, and will be less confusing for future use.

class ChangeUserGendersToUserIdentities < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_genders, :user_identities
  end
end
