class UserBook < ActiveRecord::Base
	belong_to :user
	belong_to :book
end
