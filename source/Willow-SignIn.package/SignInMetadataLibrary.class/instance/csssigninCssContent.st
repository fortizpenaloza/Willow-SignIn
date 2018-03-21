Accessing
csssigninCssContent

	^'/*<n>* sign-in.css v<1s><n>*/<n><2p>'
		expandMacrosWith: self class version
		with: SignInCascadingStyleSheetBuilder new build