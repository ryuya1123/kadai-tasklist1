class AddUserRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_references :tasks, :user, foreign_key: true 
  end
end
