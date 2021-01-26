class Milestone < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    validates :plan, presence: true
end 