App.cable.subscriptions.create(
	{
		channel: "NoticeCreateChannel"
	},
	{
		received: function(data){
			return CreateNotice(data["id"])
		}
	}
);