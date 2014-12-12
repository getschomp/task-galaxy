class User < ActiveRecord::Base
  has_one :task
  # * Tasks can be assigned to a single user.
  has_many :projects, :through => :tasks
  # * Users can belong to multiple projects.   has_many:projects
  # * A user can be assigned an individual task within a project.
  validates :email,
  presence: true

  validates :password,
  presence: true
end

# create_table "users", force: true do |t|
#   t.string   "email",      null: false
#   t.string   "password",   null: false
#   t.string   "first_name"
#   t.string   "last_name"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end
