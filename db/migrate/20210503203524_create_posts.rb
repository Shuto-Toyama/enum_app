class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      # ***** 以下を修正 *****
      t.integer :genre, null: false, default: 0
      t.text :content, null: false
      # ***** 以上を修正 *****

      t.timestamps
    end
  end
end
