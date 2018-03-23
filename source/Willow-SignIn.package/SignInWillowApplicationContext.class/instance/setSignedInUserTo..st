accessing
setSignedInUserTo: aUser
	
	signedInUserBinding := Binding to: aUser.
	alreadySignedIn := true