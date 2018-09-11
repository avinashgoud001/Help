class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :name
      t.string :Gender
      t.string :Age
      t.string :health

      t.timestamps null: false
    end
  end
end
