private - rendering
renderSignInUsingGoogleOn: aCanvas

	| link |

	link := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: [ :canvas | 
			canvas icon
				class: 'fab';
				class: 'fa-google';
				class: MaterializeCssStyles left.
			canvas
				space;
				render: 'Sign In with Google' ]
		applying: [ :button | 
			button addClass materialize wavesEffect + button addClass materialize wavesLight
				+ button addClass materialize blue + (button addClass materialize darkerBy: 3) ].

	aCanvas div
		class: MaterializeCssStyles inputField;
		with: link