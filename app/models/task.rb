class Task < ActiveRecord::Base


  validates :name,
  presence: true

  validates :user_id,
  presence: true

  validates :project_id,
  presence: true

end
