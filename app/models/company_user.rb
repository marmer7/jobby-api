class CompanyUser < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :jobs
  has_many :contacts
end
