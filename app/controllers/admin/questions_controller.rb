# frozen_string_literal: true

module Admin
  # class QuestionsController
  class QuestionsController < ApplicationController
<<<<<<< HEAD
=======
    # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
>>>>>>> 5c0975a... ticket9794 : Design and create questions and answers tables and models
    def index
      @questions = Question.all
    end
  end
end
