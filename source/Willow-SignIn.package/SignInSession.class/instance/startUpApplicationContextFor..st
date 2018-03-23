Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.
	applicationContext := SignInWillowApplicationContext workingOn: aWillowApplication.
