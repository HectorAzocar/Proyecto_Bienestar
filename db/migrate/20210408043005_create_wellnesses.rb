class CreateWellnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :wellnesses do |t|
      t.integer :wellness_id
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
