class Blog < ApplicationRecord
	mount_uploader :photo, BlogPhotoUploader
end
