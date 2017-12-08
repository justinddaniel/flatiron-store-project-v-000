class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |i|
      i.string  :title
      i.integer :category_id
      i.integer :inventory
      i.decimal :price
    end
  end
end
