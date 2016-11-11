class Example < ActiveRecord::Base
  belongs_to :user
  validates :text, :user, presence: true
  # validates :available, :presence => true
end
