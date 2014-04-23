class AddPriceAndTrendinessToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :price, :decimal
    add_column :articles, :trendiness, :decimal
  end
end
