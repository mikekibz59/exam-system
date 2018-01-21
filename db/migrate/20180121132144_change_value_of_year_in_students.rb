class ChangeValueOfYearInStudents < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :year, :integer
  end
end
