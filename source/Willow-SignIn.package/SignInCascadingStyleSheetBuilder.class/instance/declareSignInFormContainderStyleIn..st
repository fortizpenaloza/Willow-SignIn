Style declaration
declareSignInFormContainderStyleIn: builder

	builder
		declareRuleSetFor: [ :selector | selector div class: SignInCssStyles signInFormContainer ]
		with: [ :style | 
			style
				marginTop: (Percentage of: 15);
				marginBottom: (Percentage of: 15) ]