class AddOpenings < ActiveRecord::Migration
  def change
  	add_column :jobs, :opening , :integer
  end
end
