class Job < ApplicationRecord
  belongs_to :company_user
  has_many :contact_jobs
  has_many :contacts, through: :contact_jobs
end
