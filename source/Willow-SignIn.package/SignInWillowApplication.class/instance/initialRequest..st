hooks
initialRequest: aRequest

	super initialRequest: aRequest.

	self
		handleUserAgentRedirectWith: [ :request | 
			| profile |

			profile := self context openIDProvider
				accessTokenUsing: ZnClient new beOneShot
				afterBeingRedirectedTo: request url.
			self context setSignedInUserTo: profile.
			 self setContentViewTo: SignedInUserWebView new ]
		ifUserAlreadySignedInDo: [ self setContentViewTo: SignedInUserWebView new ]
		ifNot: [ self setContentViewTo: SignInWebView new ]
		value: aRequest