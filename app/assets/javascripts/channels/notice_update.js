App.cable.subscriptions.create(
	{
		channel: "NoticeUpdateChannel"
	},
	{
		received: function(data){
			return UpdateNotice(data["id"], data["x"], data["y"])
		}
	}
);