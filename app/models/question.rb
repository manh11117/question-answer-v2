# frozen_string_literal: true

# class Question
class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  validates :text, presence: true,
                   length: { minimum: 3 },
                   uniqueness: true,
                   answer: true
  accepts_nested_attributes_for :answers, allow_destroy: true
end
