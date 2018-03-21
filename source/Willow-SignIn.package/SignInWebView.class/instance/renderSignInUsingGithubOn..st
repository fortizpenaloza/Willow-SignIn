private - rendering
renderSignInUsingGithubOn: aCanvas

	| link |

	link := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: [ :canvas | 
			canvas icon
				class: 'fab';
				class: 'fa-github';
				class: MaterializeCssStyles left.
			canvas
				space;
				render: 'Sign In with Github' ]
		applying: [ :button | 
			button addClass materialize wavesEffect + button addClass materialize wavesLight
				+ button addClass materialize grey + (button addClass materialize darkerBy: 4) ].


	aCanvas div
		class: MaterializeCssStyles inputField;
		with: link