class Complete < ApplicationRecord
  belongs_to :user
  belongs_to :tarea
  validates :tarea_id, :uniqueness => { :scope => :user_id }
end
