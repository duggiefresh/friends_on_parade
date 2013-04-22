class Topic < ActiveRecord::Base
  validates :title, :body, presence: true
end
