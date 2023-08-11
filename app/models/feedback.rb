class Feedback < ApplicationRecord
    
    # pseduo-code logic
    #1. user creates feedback record
    #2. tweet the "text" attribute of the feedback record, to the "recipient handle" attribute
    before_create :santize
    after_create :send_tweet

    validates_presence_of :recipient_handle, :text
    validates_length_of :text, minimum: 1, maximum: 250

    def santize
        #insert any logic we want to do transfomation of text
        self.recipient_handle = self.recipient_handle.gsub("@", "")
    end
    def send_tweet
        TwitterService.tweet!(self) # 1. look for the 'text' function, then expect it to the object itself. same as self.text
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