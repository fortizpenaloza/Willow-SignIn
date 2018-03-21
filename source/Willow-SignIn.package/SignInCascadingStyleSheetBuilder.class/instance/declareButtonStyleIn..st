Style declaration
declareButtonStyleIn: builder

	builder
		declareRuleSetFor: [ :selector | 
			(selector div class: SignInCssStyles signInFormContainer)
				* (selector anchor class: MaterializeCssStyles button) ]
		with: [ :style | 
			style
				width: (Percentage of: 100)]