class RenameOptionColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :option, :body
  end
end
