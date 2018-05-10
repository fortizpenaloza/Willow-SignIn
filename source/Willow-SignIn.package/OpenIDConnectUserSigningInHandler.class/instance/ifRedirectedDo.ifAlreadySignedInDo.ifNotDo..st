initialization
ifRedirectedDo: ifRedirectBlock ifAlreadySignedInDo: ifAlreadySignedInBlock ifNotDo: ifNotBlock

	redirectBlock := ifRedirectBlock. 
	alreadySignedInBlock := ifAlreadySignedInBlock .
	notSignedInBlock := ifNotBlock 