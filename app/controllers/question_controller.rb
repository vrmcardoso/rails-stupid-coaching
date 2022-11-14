class QuestionController < ApplicationController
  def ask

  end

  def answer
    @input = params[:question]
    if @input == "I am going to work"
      take_screenshot
      @reply = "Great!"
    elsif @input.include?("?")
      @reply = "Silly question. Get dressed and go to work!"
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
