# This migration comes from blorgh (originally 20221117013333)
class AddAuthorIdToBlorghComments < ActiveRecord::Migration[7.0]
  def change
    add_column :blorgh_comments, :author_id, :integer
  end
end
