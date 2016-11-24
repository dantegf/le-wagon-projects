class CoachingController < ApplicationController

  def ask
  end

  def answer
    @query  = params[:query]
#Everything below this line is ~
    question = @query
    if question != ""
      elsif answer.upcase == answer
        "I can feel your motivation! #{answer}"
      else
        answer
      end
      else
        ""
    end
  end
