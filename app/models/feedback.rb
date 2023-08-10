class Feedback < ApplicationRecord
    
    # pseduo-code logic
    #1. user creates feedback record
    #2. tweet the "text" attribute of the feedback record, to the "recipient handle" attribute

    after_create :send_tweet

    def send_tweet
        TwitterService.tweet!(text) # 1. look for the 'text' function, then expect it to the object itself. same as self.text
    end
   
end

# CALLBACKS - ACTIVE RECORD
# before_create
# before_save
# before_update
# before_destroy

# after_create
# after_update

# around_create