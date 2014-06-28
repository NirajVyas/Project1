class CreateBeta < ActiveRecord::Migration
  def change
    create_table :beta do |t|

      t.timestamps
    end
  end
end
