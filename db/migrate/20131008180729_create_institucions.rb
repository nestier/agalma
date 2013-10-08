class CreateInstitucions < ActiveRecord::Migration
  def change
    create_table :institucions do |t|
      t.string :name
      t.string :direction

      t.timestamps
    end
  end
end
