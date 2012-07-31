class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'bsAYkC2uMftQXaLFfEcsQ'
      config.consumer_secret = 'WowdQHoKeuJzUZfwae723HmcPfMfcZebr8fxWhDA'
      config.oauth_token = '54448492-A1Sz35hjIwH7dHnYgCWnTHBiwMyddC6vzMH3kBOxA'
      config.oauth_token_secret = 'pPgtPm8P3le5umJlLhjJQTq6UnLtYHbB2ZlkKO3HizQ'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
   
end
