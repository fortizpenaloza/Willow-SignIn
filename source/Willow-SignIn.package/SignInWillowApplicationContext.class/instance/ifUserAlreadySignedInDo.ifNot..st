testing
ifUserAlreadySignedInDo: aUserAlreadySignedInBlock ifNot: aIfNotBlock

	alreadySignedIn
		ifTrue: [aUserAlreadySignedInBlock value: signedInUserBinding content ]
		ifFalse: aIfNotBlock