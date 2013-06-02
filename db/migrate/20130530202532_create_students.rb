class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.integer "student_id"
      t.string "name"
      t.string "username"
      t.string "cls"
      t.string "section"
      t.string "email"
      t.integer "mobile"
      t.string "password"
      t.string "salt" 
      t.timestamps
    end
    
    add_index("students", "student_id")
  end
  
  def self.down
    drop_table :students
  end
end
