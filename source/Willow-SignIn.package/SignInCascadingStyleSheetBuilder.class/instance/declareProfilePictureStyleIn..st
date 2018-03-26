Style declaration
declareProfilePictureStyleIn: builder

	builder
		declareRuleSetFor:
			[ :selector | (selector div class: SignInCssStyles signInFormContainer) * selector image ]
		with: [ :style | style width: 150 px ]