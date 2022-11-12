class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string  :email,              null: false, unique: true, index: true
      t.string  :gender,             null: false
      t.integer :age
      t.integer :level

      t.timestamps
    end
  end
end
