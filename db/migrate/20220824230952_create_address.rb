class CreateAddress < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :apartment
      t.string :country
      t.string :label
      t.string :line_1
      t.string :line_2
      t.integer :postal_code
      t.string :state
      t.references :user

      t.timestamps
    end
  end
end
