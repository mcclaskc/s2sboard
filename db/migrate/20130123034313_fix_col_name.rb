class FixColName < ActiveRecord::Migration
  def up
  	rename_column :jobs, :type, :job_type
  end

  def down
  end
end
