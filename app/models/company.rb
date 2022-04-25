class Company < ApplicationRecord
  has_many :projects, -> { order(:from_year) }, dependent: :destroy
  has_one_attached :logo
end
