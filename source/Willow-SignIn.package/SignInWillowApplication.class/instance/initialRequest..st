hooks
initialRequest: aRequest

	super initialRequest: aRequest.

	self
		handleUserAgentRedirectWith: [ :request | 
			| profile |

			profile := self context openIDProvider
				performOn: ZnClient new beOneShot
				with: request url.
			self context setSignedInUserTo: profile.
			 self setContentViewTo: SignedInUserWebView new ]
		ifUserAlreadySignedInDo: [ self setContentViewTo: SignedInUserWebView new ]
		ifNot: [ self setContentViewTo: SignInWebView new ]
		value: aRequest