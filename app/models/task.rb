class Task < ActiveRecord::Base
  attr_accessible :description, :project_id, :time, :status

  belongs_to :project

  validates_presence_of :description, :project_id, :time
end
