class CreateStreets < ActiveRecord::Migration[5.0]
  def change
    create_table :streets do |t|
      t.string :name

      t.timestamps
    end
  end
end
