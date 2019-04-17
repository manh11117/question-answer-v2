# frozen_string_literal: true

module Admin
  # class QuestionsController
  class QuestionsController < ApplicationController
    def index
      @questions = Question.order(:id).page(params[:page]).per(10)
    end
  end
end
