class Project < ApplicationRecord
  validates :project_title,  presence: true
  has_many :project_phases, dependent: :destroy
end
