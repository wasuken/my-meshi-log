class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.integer :value
      t.string :comment

      t.timestamps
    end
  end
end
