class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string  :name,              null: false, unique: true, index: true

      t.timestamps
    end
  end
end
