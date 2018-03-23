hooks
initialRequest: aRequest

	| profile |

	super initialRequest: aRequest.

	aRequest
		at: #code
		ifPresent: [ :code | 
			aRequest
				at: #state
				ifPresent: [ :state | 
					| grant token accessToken |

					grant := self session applicationContext authorizationGrant.
					token := grant performOn: ZnClient new beOneShot with: aRequest url.
					accessToken := token at: #access_token.

					profile := ZnClient new
						beOneShot;
						url: 'https://willow-demo.auth0.com/userinfo' asZnUrl;
						headerAt: 'Authorization' put: ('Bearer <1s>' expandMacrosWith: accessToken);
						get;
						response.

					self context setSignedInUserTo: (STONJSON fromString: profile contents).
					self setContentViewTo: (SignedInUserWebView for: (STONJSON fromString: profile contents)) ] ].

	aRequest at: #code ifAbsent: [ self setContentViewTo: SignInWebView new ]