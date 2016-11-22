class AddCommunitiesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :communities, foreign_key: true
  end
end
