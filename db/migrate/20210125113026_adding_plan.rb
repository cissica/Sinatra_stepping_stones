class AddingPlan < ActiveRecord::Migration
  def change
    add_column :milestones, :plan, :string
  end 
end
