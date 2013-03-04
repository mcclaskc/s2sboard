class AddOpenings < ActiveRecord::Migration
  def change
  	add_column :job, :opening , :integer
  end
end
