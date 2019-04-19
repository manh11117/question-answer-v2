# frozen_string_literal: true

# class AnswerValidator
class AnswerValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, _value)
    flag_count = record.answers.map(&:flag).count(true) unless record.answers.nil?
    record.errors[attribute] << adderror unless flag_count == 1
  end
end

def adderror
  (options[:message] || "has one correct answer")
end
