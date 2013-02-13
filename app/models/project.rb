class Project < ActiveRecord::Base
  attr_accessible :client_id, :name

  belongs_to :client
  has_many :tasks

  def total_time
    time_array = self.tasks.map {|task| task.time }
    time_array.sum
  end
end
