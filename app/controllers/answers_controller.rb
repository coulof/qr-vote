class AnswersController < ApplicationController
    before_action :set_poll

    def create
        @poll.answers.create! params.required(:answer).permit(:name)
        redirect_to @poll
    end
    # Probably not the best way to do that...
    def update
        set_answer
        @answer.increment!(:count)
    end

    private
    def set_answer
        @answer = Answer.find(params[:id])
    end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.find(params[:poll_id])
    end
end
