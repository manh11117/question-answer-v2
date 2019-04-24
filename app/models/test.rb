# frozen_string_literal: true

# class Test
class Test < ApplicationRecord
  belongs_to :user
  has_many :testanswers, dependent: :destroy, testanswer: true
end
