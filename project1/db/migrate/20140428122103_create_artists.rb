class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :genre

      t.timestamps
    end
  end
end
