enumerating
handleUserAgentRedirectWith: aUserAgentRedirectBlock ifUserAlreadySignedInDo: userAlreadySignedInBlock ifNot: aUserNotSignedInBlock value: aRequest

	| a b handlers|
	
	a := self session.
	a inspect halt.
	b := self requestContext. 
	handlers := b handlers.

	self context
		ifUserAlreadySignedInDo: [ :user | userAlreadySignedInBlock cull: user ]
		ifNot: [ aRequest
				at: #code
				ifPresent:
					[ :code | aRequest at: #state ifPresent: [ :state | aUserAgentRedirectBlock value: aRequest ] ifAbsent: aUserNotSignedInBlock ]
				ifAbsent: aUserNotSignedInBlock ]