class AddStreetToDinosaurs < ActiveRecord::Migration[5.0]
  def change
    add_reference :dinosaurs, :street, foreign_key: true
  end
end
