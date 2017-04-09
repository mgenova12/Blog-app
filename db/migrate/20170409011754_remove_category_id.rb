class RemoveCategoryId < ActiveRecord::Migration[5.0]
  def change
    remove_column :blogs, :category_id, :integer

  end
end
