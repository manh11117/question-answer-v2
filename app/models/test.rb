class Test < ApplicationRecord
  belongs_to :user
  has_many :testanswers, dependent: :destroy
  validates :text, presence: true,
                   length: { minimum: 3 },
                   uniqueness: true,
                   testanswer: true
end
