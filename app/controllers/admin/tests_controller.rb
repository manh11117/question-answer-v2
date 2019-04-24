# frozen_string_literal: true

module Admin
  # class UsersController
  class TestsController < ApplicationController
    def update
# ------------------------------------------------------------------
      @questions = Question.where(id: params[:question])
# ------------------------------------------------------------------
      unless @questions.nil?
        @test = Test.create(user_id: current_user.id, score: params[:score])
        @questions.each  do | question |
          question.answers.each  do | answer |
            @testanswer = Testanswer.create(test_id: @test.id, question_id: question.id, answer_id: answer.id)
          end
        end
      end
# -----------------------------------------------------------------
    end

  end
end
