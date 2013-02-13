class Client < ActiveRecord::Base
  attr_accessible :name

  has_many :projects

  def total_time
    time_array = self.projects.map { |project| project.total_time}
    time_array.sum
  end
end
