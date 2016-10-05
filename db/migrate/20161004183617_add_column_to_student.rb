class AddColumnToStudent < ActiveRecord::Migration
  def change
    add_column :students, :lastname, :string
    add_column :students, :fullname, :string
    add_column :students, :email, :string
  end
end
