class Account < ActiveRecord::Base
  include EasyAuth::Models::Account

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
end
