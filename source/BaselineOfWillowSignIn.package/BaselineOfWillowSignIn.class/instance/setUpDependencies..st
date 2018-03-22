baselines
setUpDependencies: spec

	spec
		baseline: 'OAuth2St'
		with: [ spec
				repository: 'github://fortizpenaloza/OAuthSt:master/source';
				loads: #('Deployment') ].
	spec
		baseline: 'OAuth2St-Dev'
		with: [ spec
				repository: 'github://fortizpenaloza/OAuthSt:master/source';
				loads: #('Development') ].


	spec
		baseline: 'WillowMaterialize'
		with: [ spec
				repository: 'github://fortizpenaloza/Willow-Materialize:master/source';
				loads: #('Development') ]