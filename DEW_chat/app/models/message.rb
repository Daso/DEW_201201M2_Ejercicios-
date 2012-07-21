class Message < ActiveRecord::Base
	Pusher.app_id = '24386'
	Pusher.key = 'df4c9ec4d8e30fc07116'
	Pusher.secret = '3cec1c32afe9bea20a24'
	
	after_create :send_to_pusher
	
	def send_to_pusher
		logger.info "Hi?"
		Pusher['Main'].trigger("message:create",self.to_json)
	end
end
