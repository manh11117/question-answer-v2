class Test < ApplicationRecord
  belongs_to :user
  has_many :testanswers, dependent: :destroy
  validates :score, testanswer: true
  accepts_nested_attributes_for :testanswers, allow_destroy: true
end
