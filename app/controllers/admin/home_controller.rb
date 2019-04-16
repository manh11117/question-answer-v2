# frozen_string_literal: true

module Admin
  # class HomeController
  class HomeController < ApplicationController
    def index
      @questions = Question.all
    end
  end
end
