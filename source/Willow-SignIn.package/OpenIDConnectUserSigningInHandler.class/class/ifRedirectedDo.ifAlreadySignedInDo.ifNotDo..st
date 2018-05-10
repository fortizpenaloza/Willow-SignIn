instance creation
ifRedirectedDo: ifRedirectBlock ifAlreadySignedInDo: ifAlreadySignedInBlock ifNotDo: ifNotBlock

	^ self new
		ifRedirectedDo: ifRedirectBlock
		ifAlreadySignedInDo: ifAlreadySignedInBlock
		ifNotDo: ifNotBlock