private - rendering
renderPictureOn: aCanvas

	aCanvas image
		resourceUrl: (signedInUser at: #picture);
		class: MaterializeCssStyles circle;
		class: MaterializeCssStyles responsiveImage