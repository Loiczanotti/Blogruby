class CreateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|

      t.string :title
      t.string :content
      t.integer :category_id
      t.timestamps
    end
    create_table :categories do |t|

      t.string :name
      t.timestamps
    end
  end
end
