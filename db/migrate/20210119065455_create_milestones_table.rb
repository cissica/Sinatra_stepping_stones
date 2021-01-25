class CreateMilestonesTable < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.string :description
      t.string :author
      t.date :date_created
      t.integer :user_id
    end 
  end
end
