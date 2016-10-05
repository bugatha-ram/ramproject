class AddColumnToUniversity < ActiveRecord::Migration
  def change
    add_column :universities, :age, :integer
    add_column :universities, :gender, :string
  end
end
