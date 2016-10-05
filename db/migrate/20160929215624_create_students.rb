class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :gender
      #t.string :fathername
      t.string :phoneno
      #t.string :email
      t.text :address
      t.string :subject

      t.timestamps null: false
    end
  end
end
