class Test < ApplicationRecord
  belongs_to :user
  has_many :testanswers, dependent: :destroy
  validates :text, presence: true,
                   length: { minimum: 3 },
                   uniqueness: true,
                   testanswer: true
  accepts_nested_attributes_for :testanswers, allow_destroy: true
end
