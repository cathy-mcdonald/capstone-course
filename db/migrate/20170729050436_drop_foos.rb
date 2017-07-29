class DropFoos < ActiveRecord::Migration
  def change
    drop_table :foos
  end
end
