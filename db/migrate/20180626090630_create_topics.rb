class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.text :topic
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
