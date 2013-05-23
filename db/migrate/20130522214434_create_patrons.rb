class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
