class Project < ActiveRecord::Base
  attr_accessible :client_id, :name

  belongs_to :client
  has_many :tasks,:dependent => :destroy

  validates_presence_of :client_id, :name

  def total_time
    self.tasks.inject(0) {|sum, task| sum += task.time }
  end
end
