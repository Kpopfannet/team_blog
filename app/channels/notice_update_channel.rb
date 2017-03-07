class NoticeUpdateChannel < ApplicationCable::Channel
	def subscribed
		stream_from "notice_update_channel"
	end
end

