class AddLinkToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :external_link, :string
  end
end
