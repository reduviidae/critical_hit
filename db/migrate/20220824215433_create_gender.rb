class CreateGender < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.string :name, index: true

      t.timestamps
    end
  end
end
