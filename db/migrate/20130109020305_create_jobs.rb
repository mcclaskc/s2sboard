class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :user_id
      t.string :contact

      t.timestamps
    end
  end
end
