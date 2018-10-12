class Quote < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
