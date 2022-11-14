# class QuestionsController < ApplicationController
#   def ask
#   end

#   def see
#   end

#   def answers
#     @question = params["questionasked"]

#     if @question = "I am going to work"
#       @answer = "Great!"
#     end
#   end
# end








class QuestionsController < ApplicationController
  def ask
  end



  def answers
    @question = params["questionasked"]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.match?(/^(.*[^I])\?$/)
      @answer = "Silly question, get dressed and go to work!."
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
