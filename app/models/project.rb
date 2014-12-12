class Project < ActiveRecord::Base
  has_many :tasks
  has_many :users, :through => :tasks

  validates :name,
  presence: true

end

# create_table "projects", force: true do |t|
#   t.string   "name",        null: false
#   t.string   "description"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end
