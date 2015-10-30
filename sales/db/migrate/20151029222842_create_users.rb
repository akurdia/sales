class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :myid
      t.timestamps null: false
    end
  end
end
