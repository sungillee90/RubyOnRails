class CreateCrudposts < ActiveRecord::Migration[6.0]
  def change
    create_table :crudposts do |t|
      t.string, :description
      t.string :title

      t.timestamps
    end
  end
end
