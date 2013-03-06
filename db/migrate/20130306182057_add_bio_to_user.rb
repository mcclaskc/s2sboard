class AddBioToUser < ActiveRecord::Migration
  def change
  	add_column :users, :company_bio, :string
  end
end
