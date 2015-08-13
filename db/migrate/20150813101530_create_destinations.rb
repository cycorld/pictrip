class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :title
      t.string :lat
      t.string :lng
      t.boolean :is_public
      
      t.timestamps null: false
    end
  end
end
