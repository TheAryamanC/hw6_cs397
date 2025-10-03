class AddDoneToTodo < ActiveRecord::Migration[8.0]
  def change
    add_column :todos, :done, :boolean, default: false, null: false
  end
end
