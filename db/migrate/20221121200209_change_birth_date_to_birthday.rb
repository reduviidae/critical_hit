class ChangeBirthDateToBirthday < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :birth_date, :birthday
  end
end
