class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.integer :issue_no
      t.string :authors
      t.string :artists
      t.integer :year
      t.string :cover_url
      t.references :publisher, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
