class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # outra forma:
    # array = ["Great", "silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    # if params[:question] == "I am going to work"
    #   @answer = array[0]
    # elsif params[:question].ends_with?("?")
    #   @answer = array[1]
    # else
    #   @answer = array[2]
    # end
  end
end
