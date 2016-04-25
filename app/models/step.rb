class Step < ActiveRecord::Base

  belongs_to :goals
  default_scope -> { order(created_at: :desc) }
  
 end