hooks
initialRequest: aRequest

	| handler |

	super initialRequest: aRequest.

	handler := OpenIDConnectUserSigningInHandler
		ifRedirectedDo: [ :redirectUri |  ]
		ifAlreadySignedInDo: [ self setContentViewTo: SignedInUserWebView new ]
		ifNotDo: [ self setContentViewTo: SignInWebView new ].

	handler handle: aRequest within: self session.

	self
		handleUserAgentRedirectWith: [ :request | 
			| profile |

			profile := self context openIDProvider issueAccessTokenUsing: ZnClient new beOneShot afterBeingRedirectedTo: request url.
			self context setSignedInUserTo: profile.
			self setContentViewTo: SignedInUserWebView new ]
		ifUserAlreadySignedInDo: [ self setContentViewTo: SignedInUserWebView new ]
		ifNot: [ self setContentViewTo: SignInWebView new ]
		value: aRequest