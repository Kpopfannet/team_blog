App.cable.subscriptions.create(
	{
		channel: "NoticeDeleteChannel"
	},
	{
		received: function(data){
			return DeleteNotice(data["id"])
		}
	}
);