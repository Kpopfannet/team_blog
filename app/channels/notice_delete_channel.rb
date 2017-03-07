class NoticeDeleteChannel < ApplicationCable::Channel
	def subscribed
		stream_from "notice_delete_channel"
	end
end