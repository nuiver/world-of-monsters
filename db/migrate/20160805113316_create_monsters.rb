class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :health
      t.string :image_url

      t.timestamps
    end
  end
end
