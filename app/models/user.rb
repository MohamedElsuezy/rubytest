class User < ApplicationRecord
  has_secure_password
  has_many :messages


  def self.for_select
   {
       'users'   => where(:group => "clients").map { |p| [p.name, p.id] },
       'trainers' => where(:group => "trainers").map { |p| [p.name, p.id] }
   }
  end
end
