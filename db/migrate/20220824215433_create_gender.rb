class CreateGender < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.string :name

      t.timestamps
    end
  end
end
