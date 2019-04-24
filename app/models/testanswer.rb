# frozen_string_literal: true

# class Testanswer
class Testanswer < ApplicationRecord
  belongs_to :test
  belongs_to :question
  belongs_to :answer
end
