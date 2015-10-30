class AddDetailsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :usermyid, :string
  end
end
