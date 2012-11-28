class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
