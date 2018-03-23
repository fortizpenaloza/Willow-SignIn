initialization
initializeAuthorizationCodeGrant

	| baseUrl authorizationEndpoint tokenEndpoint authorizationServer redirectionEndpoint anIdentifier aSecret client |

	baseUrl := 'https://willow-demo.auth0.com' asZnUrl.
	authorizationEndpoint := baseUrl copy
		addPathSegment: 'authorize';
		yourself.
	tokenEndpoint := baseUrl copy
		addPathSegments: #('oauth' 'token');
		yourself.

	authorizationServer := OAuth2AuthorizationServer
		providingAuthorizationGrantsAt: authorizationEndpoint
		providingTokensAt: tokenEndpoint.

	redirectionEndpoint := 'http://localhost:8080/sign-in' asZnUrl.
	anIdentifier := '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'.
	aSecret := 'fcZy-KVJvbT5DFEFfD8KEjLrPgu5dSDyJbAP7Z4gzBHRvFEqs3O_oq11kv7n3sH6'.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: anIdentifier
		sharing: aSecret
		redirectingTo: redirectionEndpoint.

	authorizationGrant := AuthorizationCodeGrant on: client scopedTo: 'openid name profile picture'.