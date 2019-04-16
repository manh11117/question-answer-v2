# frozen_string_literal: true

module Admin
  # class QuestionsController
  class QuestionsController < ApplicationController
    def index
      @questions = Question.all
    end
  end
end
