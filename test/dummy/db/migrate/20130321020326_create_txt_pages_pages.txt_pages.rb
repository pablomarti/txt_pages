# This migration comes from txt_pages (originally 20130321015909)
class CreateTxtPagesPages < ActiveRecord::Migration
  def change
    create_table :txt_pages_pages do |t|
      t.string :name
      t.string :permalink
      t.text :content

      t.timestamps
    end
    add_index :txt_pages_pages, :permalink
  end
end
