initialization
initializeWorkingOn: aSignInWillowApplication

	application := aSignInWillowApplication.
	signedInUserBinding := Binding undefinedExplainedBy: #'User not signed in yet'.
	
	alreadySignedIn := false.

	self initializeOpenIDProvider