# frozen_string_literal: true

module Admin
  # class UsersController
  class AnswersController < ApplicationController
    def update
      @answer = Answer.find(params[:id])
      @question = @answer.question
      @question.answers.update(flag: false)
      @answer.update(flag: true)
      respond_to do |format|
        format.js
      end
    end
  end
end
