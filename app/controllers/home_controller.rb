# frozen_string_literal: true

# class HomeController
class HomeController < ApplicationController
  def index
    if !logged_in?
      @questions = Question.all.sample(3)
    end
  end
end
