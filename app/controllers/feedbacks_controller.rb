class FeedbacksController < ApplicationController
    def create
        feedback_params = request.params[:feedback]
        Feedback.create(feedback_params) # => {recipent_handle: 'somewhere' , test: "someting"}
        # TwitterService.tweet!(feedback_params[:text]) => we will do this at the model level not in the contollere level
    end
    private

    def feedback_params
        params.require(:feedback).permit(:text, :recipient_handle)
    end

end
