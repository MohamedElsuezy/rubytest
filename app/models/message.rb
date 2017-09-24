class Message < ApplicationRecord
  belongs_to :from_id, :foreign_key => :from_id_id, class_name: 'User'
  belongs_to :to_id, :foreign_key => :to_id_id, class_name: 'User'

  before_create :set_senttime_to_now
  def set_senttime_to_now
    self.senttime = Time.now
  end
end
