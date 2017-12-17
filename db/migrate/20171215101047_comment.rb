class Comment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text   :body
      t.integer :notice_id #外键字段

      t.timestamps
    end
  end
end
