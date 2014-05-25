class Api::QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save
      render json: @question
    else
      render json: @question.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def update
    @question = Question.find(params[:id])
    @question.assign_attributes(question_params)

    if @question.save
      render json: @question
    else
      render json: @question.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    @question = Question.find(params[:id])
    render json: @question
  end
  
  def destroy
    
  end    
  
  private
  def question_params
    params.permit(:title, :answer, :category, :selected)
  end
end