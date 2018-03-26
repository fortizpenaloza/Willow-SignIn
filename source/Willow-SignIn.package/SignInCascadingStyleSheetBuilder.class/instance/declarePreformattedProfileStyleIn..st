Style declaration
declarePreformattedProfileStyleIn: builder

	builder
		declareRuleSetFor: [ :selector | (selector div class: SignInCssStyles signInFormContainer) * selector preformatted  ]
		with: [ :style | style fontSize: (Percentage of: 60) ]