class User < ApplicationRecord
  has_many :company_users
  has_many :contacts, through: :company_users
  has_many :jobs, through: :company_users
end
