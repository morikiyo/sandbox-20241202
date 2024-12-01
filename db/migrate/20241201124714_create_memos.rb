class CreateMemos < ActiveRecord::Migration[8.0]
  def change
    create_table :memos do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end
