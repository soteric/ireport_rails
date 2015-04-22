class AddFullnameToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :fullname, :string
  end
end
