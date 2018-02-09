baselines
setUpDependencies: spec

	spec
		baseline: 'OAuth'
		with: [ spec
				repository: 'github://fortizpenaloza/OAuthSt:master/source';
				loads: #('Deployment') ].
			
	spec
		baseline: 'WillowMaterialize'
		with: [ spec
				repository: 'github://fortizpenaloza/Willow-Materialize:master/source';
				loads: #('Development') ]