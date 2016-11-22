class CreateCommunities < ActiveRecord::Migration[5.0]
  def change
    create_table :communities do |t|
      t.string :zipcode

      t.timestamps
    end
  end
end
