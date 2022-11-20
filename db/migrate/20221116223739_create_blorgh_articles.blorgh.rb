# This migration comes from blorgh (originally 20221114193953)
class CreateBlorghArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :blorgh_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
