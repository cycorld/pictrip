class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.belongs_to :user
      t.string :title
      t.string :lat, default: "37.4812917"
      t.string :lng, default: "126.9527237"
      t.boolean :is_public
      
      t.timestamps null: false
    end
  end
end
