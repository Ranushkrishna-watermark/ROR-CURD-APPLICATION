class AddColsToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :discription, :text
  end
end
