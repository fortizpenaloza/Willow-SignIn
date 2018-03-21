private - initialization
initializeSignInButton

	signInButton := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Sign In'
		applying: [ :link | link addClass materialize wavesEffect + link addClass materialize wavesLight ].

	signInButton onTrigger
		serializeContainerForm;
		evaluate: [ passwordField contents inspect ]