rendering
renderContentOn: aCanvas

	aCanvas form
		with: [ self
				renderLabeledUsernameFieldOn: aCanvas;
				renderLabeledPasswordFieldOn: aCanvas;
				renderSignInButtonOn: aCanvas ]