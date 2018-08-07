class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.float :posX
      t.float :posY
      t.string :name

      t.timestamps
    end
  end
end
