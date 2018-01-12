class CreateMettings < ActiveRecord::Migration[5.1]
  def change
    create_table :mettings do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.string :tags
      t.references :user, foreign_key: true
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
