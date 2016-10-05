class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :firstname
      t.string :lastname
      t.string :fullname
      t.string :phone
      t.string :email
      t.string :address
      t.string :subject

      t.timestamps null: false
    end
  end
end
