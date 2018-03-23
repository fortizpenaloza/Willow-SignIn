baselines
setUpDependencies: spec

	spec
		baseline: 'OAuth2St'
		with: [ spec
				repository: 'github://fortizpenaloza/OAuthSt:master/source';
				loads: #('Deployment') ].
	spec
		project: 'OAuth2St-Dev'
		copyFrom: 'OAuth2St'
		with: [ spec loads: #('OAuth2St-Tests') ].

	spec
		baseline: 'WillowMaterialize'
		with: [ spec
				repository: 'github://fortizpenaloza/Willow-Materialize:master/source';
				loads: #('Development') ]