class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
