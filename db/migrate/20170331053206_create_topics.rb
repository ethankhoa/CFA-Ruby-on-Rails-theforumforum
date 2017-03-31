class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :title, null: false, default: ""
      t.string :description, null: false, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
