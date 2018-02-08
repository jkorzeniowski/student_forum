class AddIndexToStudentsIndex < ActiveRecord::Migration
  def change
    add_index	:students,	:index,	unique:	true
  end
end
