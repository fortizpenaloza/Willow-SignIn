private - rendering
renderProfilePanelOn: aCanvas

	aCanvas div
		class: MaterializeCssStyles cardPanel;
		class: MaterializeCssStyles grey;
		class: (MaterializeCssStyles lightenBy: 5);
		class: MaterializeCssStyles center;
		with: [ self
				renderPictureOn: aCanvas;
				renderDividerOn: aCanvas;
				renderJsonOn: aCanvas ]