class CreateCategoryblogs < ActiveRecord::Migration[5.0]
  def change
    create_table :categoryblogs do |t|
      t.integer :blog_id
      t.integer :category_id

      t.timestamps
    end
  end
end
