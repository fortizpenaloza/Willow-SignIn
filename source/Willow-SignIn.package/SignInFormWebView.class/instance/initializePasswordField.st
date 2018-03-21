private - initialization
initializePasswordField

	passwordField := self componentSupplier
		singleLineTextFieldApplying: [ :textField | textField bePasswordInput ]