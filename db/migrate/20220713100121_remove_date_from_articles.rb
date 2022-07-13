class RemoveDateFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :date
  end
end
