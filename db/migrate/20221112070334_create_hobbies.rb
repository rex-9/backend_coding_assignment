class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|
      t.belongs_to :player
      t.belongs_to :sport

      t.timestamps
    end
  end
end
