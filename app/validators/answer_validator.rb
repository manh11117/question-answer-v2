# frozen_string_literal: true

# class AnswerValidator
class AnswerValidator < ActiveModel::EachValidator
  def validate_each(record, attribute)
    value = record.question.answers.where(flag: true).count
    record.errors[attribute] << adderror unless value <= 1
  end
end

def adderror
  (options[:message] || "A question has a maximum of one correct answer")
end
