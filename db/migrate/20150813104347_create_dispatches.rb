class CreateDispatches < ActiveRecord::Migration
  def change
    create_table :dispatches do |t|
      t.belongs_to :destination
      t.text :diary
      t.string :emotion
      t.datetime :when
      t.string :lat
      t.string :lng
      
      t.timestamps null: false
    end
  end
end
