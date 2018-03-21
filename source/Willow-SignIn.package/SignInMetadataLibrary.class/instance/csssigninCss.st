Accessing
csssigninCss

	^WAFileLibraryResource
		filepath: 'css/sign-in.css'
		mimeType: WAMimeType textCss
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #csssigninCssContent)