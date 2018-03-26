enumerating
handleUserAgentRedirectWith: aUserAgentRedirectBlock ifUserAlreadySignedInDo: userAlreadySignedInBlock ifNot: aUserNotSignedInBlock value: aRequest

	self context
		ifUserAlreadySignedInDo: [ :user | userAlreadySignedInBlock cull: user ]
		ifNot: [ aRequest
				at: #code
				ifPresent:
					[ :code | aRequest at: #state ifPresent: [ :state | aUserAgentRedirectBlock value: aRequest ] ifAbsent: aUserNotSignedInBlock ]
				ifAbsent: aUserNotSignedInBlock ]