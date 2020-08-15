class Project < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true
end
