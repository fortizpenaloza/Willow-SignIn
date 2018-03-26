private - rendering
renderSignInUsingOpenIDOn: aCanvas

	| link |

	link := LinkWebView
		synchronicLabeled: [ :canvas | 
			canvas icon
				class: 'fab';
				class: 'fa-openid';
				class: MaterializeCssStyles left.
			canvas
				space;
				render: 'Sign In with OpenID Connect' ]
		applying: [ :button | 
			button addClass materialize button + button addClass materialize wavesEffect
				+ button addClass materialize wavesLight + button addClass materialize blue
				+ (button addClass materialize darkerBy: 3)
				+ (OpenLocationCommand forSameBrowsingContextNavigatingTo: self authorizationUrl) ].

	aCanvas div
		class: MaterializeCssStyles inputField;
		with: link