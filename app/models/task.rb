class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  # * Tasks can be assigned to a single user.
  # * A task can belong to a single project.

  validates :name,
  presence: true

  validates :user_id,
  presence: true

  validates :project_id,
  presence: true

end

# create_table "tasks", force: true do |t|
#   t.string   "name",        null: false
#   t.string   "description"
#   t.date     "due_date"
#   t.integer  "user_id",     null: false
#   t.integer  "project_id",  null: false
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end
