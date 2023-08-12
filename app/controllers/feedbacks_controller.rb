class FeedbacksController < ApplicationController
    def create
        # feedback_params = request.params[:feedback]
        feedback = Feedback.create(feedback_params) # => {recipent_handle: 'somewhere' , test: "someting"}
        # TwitterService.tweet!(feedback_params[:text]) => we will do this at the model level not in the contollere level
        session[:tweet_url] = feedback.tweet_url #the session can be called anything 
        redirect_to root_path
    end

    private

    def feedback_params
        # request.params == params in ruby on rails
        params.require(:feedback).permit(:text, :recipient_handle) # only alows these attributies for security - not add something else. 

    end

end


# The mostly-agreed upon approach is known as "Fat Models, Skinny Controllers." In this paradigm you limit your controller logic to:

# fetching item(s) from the database
# inserting items to the database