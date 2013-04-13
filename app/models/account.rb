class Account < ActiveRecord::Base
  include EasyAuth::Models::Account

  validates :first_name, :last_name, presence: true
end
