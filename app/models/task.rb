class Task < ActiveRecord::Base
  attr_accessible :description, :project_id, :time

  belongs_to :project
end
