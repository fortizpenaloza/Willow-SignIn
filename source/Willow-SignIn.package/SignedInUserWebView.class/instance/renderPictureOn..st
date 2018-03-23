private - rendering
renderPictureOn: aCanvas

	aCanvas image
		resourceUrl: (profile at: #picture);
		class: MaterializeCssStyles circle;
		class: MaterializeCssStyles responsiveImage