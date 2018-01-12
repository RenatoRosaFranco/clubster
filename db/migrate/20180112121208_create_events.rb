class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :slig
      t.string :tags
      t.references :club, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
