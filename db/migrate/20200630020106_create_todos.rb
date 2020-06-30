class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :priority
      t.string :content

      t.timestamps
    end
  end
end
