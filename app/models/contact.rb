class Contact < ApplicationRecord
  belongs_to :company_user
  has_many :contact_jobs
  has_many :jobs, through: :contact_jobs
end
