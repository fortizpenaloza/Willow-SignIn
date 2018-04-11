initialization
initializeOpenIDProvider

	| issuer authorizationEndpoint tokenEndpoint authorizationServer redirectionEndpoint anIdentifier aSecret client |

	issuer := 'https://willow-demo.auth0.com' asZnUrl.
	authorizationEndpoint := issuer copy
		addPathSegment: 'authorize';
		yourself.
	tokenEndpoint := issuer copy
		addPathSegments: #('oauth' 'token');
		yourself.

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: authorizationEndpoint
		andIssuingTokensAt: tokenEndpoint.

	redirectionEndpoint := 'http://localhost:8080/sign-in' asZnUrl.
	anIdentifier := '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'.
	aSecret := 'fcZy-KVJvbT5DFEFfD8KEjLrPgu5dSDyJbAP7Z4gzBHRvFEqs3O_oq11kv7n3sH6'.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: anIdentifier
		sharing: aSecret
		redirectingTo: redirectionEndpoint.

	openIDProvider := OpenIDProvider
		providingUserInfoAt: (issuer copy addPathSegment: 'userinfo')
		signingKeySetAt: (issuer copy addPathSegments: #('.well-known' 'jwks.json'))
		using: client