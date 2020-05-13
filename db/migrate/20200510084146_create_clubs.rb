class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.integer :category_id
      t.string :name
      t.text :introduction
      t.string :member
      t.string :place
      t.string :time
      t.string :email
      t.string :image_id

      t.timestamps
    end
  end
end
