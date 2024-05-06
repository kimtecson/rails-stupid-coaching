class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:question]
    @answer = @answers[2]
    @answer =  @answers[0] if @question == 'I am going to work'
    @answer =  @answers[1] if @question.include?('?')
  end
end
