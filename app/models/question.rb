# frozen_string_literal: true

# class Question
class Question < ApplicationRecord
  has_many :answers
  validates :text, presence: true,
                   length: { minimum: 3 }
end
