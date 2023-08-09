class PagesController < ApplicationController
    def home
        #this called a action
    end
    
    def create_tweet
        TwitterService.tweet!(params[:message])
    end

end
