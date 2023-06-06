const config={
	_id:'localrep',
	members:[
		{
			_id:0,
			host:'localhost:27017',
			priority:5	
		},
		{
			_id:1,
			host:'localhost:27027',
			priority:0
		},
		{
			_id:2,
			host:'localhost:27037',
			priority:0	
		},
	]
}

if(db.hello().isWritablePriary||db.hello().secondary){
	rs.reconfigure(config)
}
else{
	rs.initiate(config)
}
