class CreateDispatches < ActiveRecord::Migration
  def change
    create_table :dispatches do |t|
      t.belongs_to :destination
      t.string :title
      t.text :diary
      t.string :emotion
      t.datetime :when
      t.string :lat
      t.string :lng
      t.attachment :picture
      
      t.timestamps null: false
    end
  end
end
