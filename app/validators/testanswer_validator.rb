# frozen_string_literal: true

# class AnswerValidator
class AnswerValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, _value)
    testanswer_count = record.testanswers.map(&:test_id).count(record.id) unless record.testanswers.nil?
    record.errors[attribute] << adderror unless answer_count <= 20
  end
end

def adderror
  (options[:message] || "has maximum 20 testanswer")
end
