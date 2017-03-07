class NoticeCreateChannel < ApplicationCable::Channel
	def subscribed
		stream_from "notice_create_channel"
	end
end

