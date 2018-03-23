private - rendering
renderJsonOn: aCanvas

	aCanvas div
		class: MaterializeCssStyles leftAlign;
		with: [ aCanvas preformatted with: (STONJSON toStringPretty: profile) ]