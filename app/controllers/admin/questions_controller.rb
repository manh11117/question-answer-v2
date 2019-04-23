# frozen_string_literal: true

module Admin
  # class QuestionsController
  class QuestionsController < ApplicationController
    def index
      @questions = Question.order(:id).page(params[:page]).per(10)
    end

    def show
      @question = Question.find(params[:id])
    end

    def new
      @question = Question.new
      4.times { @question.answers.build }
    end

    def edit
      @question = Question.find(params[:id])
    end

    def create
      @question = Question.new(question_params)
      if @question.save
        redirect_to admin_questions_path
      else
        render "new"
      end
    end

    def update
      @question = Question.find(params[:id])

      if @question.update(question_params)
        redirect_to admin_questions_path
      else
        render "edit"
      end
    end

    def destroy
      @question = Question.find(params[:id])
      @question.destroy

      redirect_to admin_questions_path
    end

    private

    def question_params
      params.require(:question).permit(:text, answers_attributes: %i[id text _destroy flag])
    end
  end
end
