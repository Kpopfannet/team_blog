class Blog < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	mount_uploaders :photolist, PhotolistUploader
end
