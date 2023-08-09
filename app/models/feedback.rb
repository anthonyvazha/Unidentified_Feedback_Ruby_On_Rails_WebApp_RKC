class Feedback < ApplicationRecord
    
    # pseduo-code logic
    #1. user creates feedback record
    #2. tweet the "text" attribute of the feedback record, to the "recipient handle" attribute

    after_create :send_tweet

    def send_tweet
        puts "Sending Tweet!!!!"
        # insert twitter API logic here
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